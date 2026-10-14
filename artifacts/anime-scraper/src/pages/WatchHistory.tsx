import { API_BASE } from "@/lib/apiBase";
import { useEffect, useState } from "react";
import { useLocation, Link } from "wouter";
import { ChevronRight, Play, Trash2, Clock, History, Tv, Film } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import { useAuth } from "@/lib/auth-context";

interface AnimeHistoryItem {
  kind: "anime";
  serverId?: string;
  id: number;
  title: string;
  cover: string;
  ep: number;
  date: string;
  totalEps: number;
}

interface AnimHistoryItem {
  kind: "anim";
  tmdbId: string;
  type: "movie" | "tv";
  title: string;
  cover: string;
  ep: number;
  season: number;
  date: string;
}

interface StardimaHistoryItem {
  kind: "stardima";
  serverId?: string;
  providerTitleId: string;
  episodeId: string;
  mediaType: "movie" | "series";
  episodeTitle?: string;
  title: string;
  cover: string;
  ep: number;
  season: number;
  date: string;
}

type HistoryItem = AnimeHistoryItem | AnimHistoryItem | StardimaHistoryItem;

function timeAgo(iso: string): string {
  try {
    const diff = (Date.now() - new Date(iso).getTime()) / 1000;
    if (diff < 60)     return "الآن";
    if (diff < 3600)   return `${Math.floor(diff / 60)} دقيقة`;
    if (diff < 86400)  return `${Math.floor(diff / 3600)} ساعة`;
    if (diff < 604800) return `${Math.floor(diff / 86400)} يوم`;
    if (diff < 2592000) return `${Math.floor(diff / 604800)} أسبوع`;
    return `${Math.floor(diff / 2592000)} شهر`;
  } catch { return ""; }
}

function fmtSec(s: number): string {
  if (!s) return "";
  const m = Math.floor(s / 60);
  const h = Math.floor(m / 60);
  if (h > 0) return `${h}:${String(m % 60).padStart(2, "0")}:${String(Math.floor(s) % 60).padStart(2, "0")}`;
  return `${m}:${String(Math.floor(s) % 60).padStart(2, "0")}`;
}

function getAnimeProgress(id: number, ep: number): number {
  try { return parseFloat(localStorage.getItem(`wp-${id}-${ep}`) || "0") || 0; } catch { return 0; }
}

function getAnimProgress(tmdbId: string, type: string, season: number, ep: number): number {
  try { return parseFloat(localStorage.getItem(`anim-wp-${tmdbId}-${type}-${season}-${ep}`) || "0") || 0; } catch { return 0; }
}

function getStardimaProgress(providerTitleId: string, episodeId: string): number {
  try {
    const raw = localStorage.getItem(`stardima-progress:${providerTitleId}:${episodeId}`) || "0";
    try {
      const value = JSON.parse(raw);
      if (value && typeof value === "object") return Number(value.position) || 0;
      return Number(raw) || 0;
    } catch { return Number(raw) || 0; }
  } catch { return 0; }
}

function loadStardimaHistory(): StardimaHistoryItem[] {
  const items: StardimaHistoryItem[] = [];
  try {
    const raw = JSON.parse(localStorage.getItem("stardima-watch-history") || "[]");
    for (const entry of raw) {
      if (!entry?.providerTitleId || !entry?.episodeId || !entry?.title) continue;
      items.push({
        kind: "stardima",
        providerTitleId: String(entry.providerTitleId),
        episodeId: String(entry.episodeId),
        mediaType: entry.mediaType === "movie" ? "movie" : "series",
        episodeTitle: String(entry.episodeTitle || ""),
        title: String(entry.title),
        cover: String(entry.cover || ""),
        ep: Number(entry.ep) || 1,
        season: Number(entry.season) || 1,
        date: String(entry.date || new Date().toISOString()),
      });
    }
  } catch { /* ignore malformed local history */ }
  return items;
}

function sortAndDedupeHistory(items: HistoryItem[]): HistoryItem[] {
  items.sort((a, b) => new Date(b.date).getTime() - new Date(a.date).getTime());
  const seenStardima = new Set<string>();
  return items.filter((item) => {
    if (item.kind !== "stardima") return true;
    const key = `${item.providerTitleId}:${item.episodeId}`;
    if (seenStardima.has(key)) return false;
    seenStardima.add(key);
    return true;
  });
}

function loadLocalHistory(): HistoryItem[] {
  const anime: AnimeHistoryItem[] = [];
  try {
    const raw = JSON.parse(localStorage.getItem("watch-history") || "[]");
    for (const x of raw) {
      if (x?.id && x?.title) anime.push({ kind: "anime", id: x.id, title: x.title, cover: x.cover || "", ep: x.ep, date: x.date, totalEps: x.totalEps || 0 });
    }
  } catch { /* ignore */ }

  const anim: AnimHistoryItem[] = [];
  try {
    const raw = JSON.parse(localStorage.getItem("anim-watch-history") || "[]");
    for (const x of raw) {
      const tmdbId = x?.tmdbId || x?.id;
      if (!tmdbId || !x?.title) continue;
      const rawCover = x.cover || x.poster || "";
      const fullCover = rawCover && !rawCover.startsWith("http") ? `https://image.tmdb.org/t/p/w300${rawCover}` : rawCover;
      anim.push({ kind: "anim", tmdbId: String(tmdbId), type: x.type || "movie", title: x.title, cover: fullCover, ep: x.ep || 1, season: x.season || 1, date: x.date || new Date().toISOString() });
    }
  } catch { /* ignore */ }

  const all: HistoryItem[] = [...anime, ...anim, ...loadStardimaHistory()];
  return sortAndDedupeHistory(all);
}

async function loadServerHistory(): Promise<HistoryItem[]> {
  try {
    const res = await fetch(API_BASE + "/api/user/history?limit=60", { credentials: "include" });
    if (!res.ok) return [];
    const data = await res.json();
    return (data.history || []).map((r: any): HistoryItem => {
      const animeType = String(r.animeType ?? r.anime_type ?? "anime");
      const title = String(r.animeTitle ?? r.anime_title ?? "");
      const cover = String(r.animeCover ?? r.anime_cover ?? "");
      const ep = Number(r.episodeNumber ?? r.episode_number) || 1;
      const season = Number(r.seasonNumber ?? r.season_number) || 1;
      const date = String(r.watchedAt ?? r.watched_at ?? new Date().toISOString());
      if (animeType.startsWith("stardima:")) {
        const decode = (part?: string) => {
          try { return decodeURIComponent(part || ""); } catch { return part || ""; }
        };
        const parts = animeType.slice("stardima:".length).split(":");
        return {
          kind: "stardima",
          serverId: String(r.id || ""),
          providerTitleId: decode(parts[0]),
          episodeId: decode(parts[1]),
          mediaType: decode(parts[2]) === "movie" ? "movie" : "series",
          episodeTitle: decode(parts[4]),
          title,
          cover,
          ep,
          season,
          date,
        };
      }
      return {
        kind: "anime",
        serverId: String(r.id || ""),
        id: Number(r.animeId ?? r.anime_id) || 0,
        title,
        cover,
        ep,
        date,
        totalEps: 0,
      };
    }).filter((item: HistoryItem) => item.kind !== "stardima" ||
      Boolean(item.providerTitleId && item.episodeId && item.title));
  } catch { return []; }
}

export default function WatchHistory() {
  const [, navigate] = useLocation();
  const { user } = useAuth();
  const userId = user?.id || null;
  const [history, setHistory] = useState<HistoryItem[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function load() {
      setLoading(true);
      if (userId) {
        const server = await loadServerHistory();
        const anim: AnimHistoryItem[] = [];
        try {
          const raw = JSON.parse(localStorage.getItem("anim-watch-history") || "[]");
          for (const x of raw) {
            const tmdbId = x?.tmdbId || x?.id;
            if (!tmdbId || !x?.title) continue;
            const rawCover = x.cover || x.poster || "";
            const fullCover = rawCover && !rawCover.startsWith("http") ? `https://image.tmdb.org/t/p/w300${rawCover}` : rawCover;
            anim.push({ kind: "anim", tmdbId: String(tmdbId), type: x.type || "movie", title: x.title, cover: fullCover, ep: x.ep || 1, season: x.season || 1, date: x.date || new Date().toISOString() });
          }
        } catch {}
        const all: HistoryItem[] = [...server, ...anim, ...loadStardimaHistory()];
        setHistory(sortAndDedupeHistory(all));
      } else {
        setHistory(loadLocalHistory());
      }
      setLoading(false);
    }
    load();
  }, [userId]);

  function removeAnime(serverId: string | undefined, id: number, ep: number) {
    if (userId && serverId) {
      fetch(`${API_BASE}/api/user/history/${serverId}`, { method: "DELETE", credentials: "include" }).catch(() => {});
    }
    try {
      const raw: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
      localStorage.setItem("watch-history", JSON.stringify(raw.filter(x => !(x.id === id && x.ep === ep))));
    } catch {}
    setHistory(h => h.filter(x => !(x.kind === "anime" && x.id === id && x.ep === ep)));
  }

  function removeAnim(tmdbId: string, type: string, ep: number, season: number) {
    try {
      const raw: any[] = JSON.parse(localStorage.getItem("anim-watch-history") || "[]");
      localStorage.setItem("anim-watch-history", JSON.stringify(raw.filter(x => !((x.id === tmdbId || x.tmdbId === tmdbId) && x.type === type && x.ep === ep && x.season === season))));
    } catch {}
    setHistory(h => h.filter(x => !(x.kind === "anim" && x.tmdbId === tmdbId && x.type === type && x.ep === ep && x.season === season)));
  }

  function removeStardima(providerTitleId: string, episodeId: string, serverId?: string) {
    if (userId && serverId) {
      fetch(`${API_BASE}/api/user/history/${encodeURIComponent(serverId)}`, {
        method: "DELETE",
        credentials: "include",
      }).catch(() => {});
    }
    try {
      const raw: any[] = JSON.parse(localStorage.getItem("stardima-watch-history") || "[]");
      localStorage.setItem("stardima-watch-history", JSON.stringify(raw.filter((entry) =>
        !(String(entry.providerTitleId) === providerTitleId && String(entry.episodeId) === episodeId)
      )));
      localStorage.removeItem(`stardima-progress:${providerTitleId}:${episodeId}`);
    } catch {}
    setHistory(items => items.filter(item =>
      !(item.kind === "stardima" && item.providerTitleId === providerTitleId && item.episodeId === episodeId)
    ));
  }

  function clearAll() {
    if (userId) {
      fetch(API_BASE + "/api/user/history", { method: "DELETE", credentials: "include" }).catch(() => {});
    }
    localStorage.removeItem("watch-history");
    localStorage.removeItem("anim-watch-history");
    localStorage.removeItem("stardima-watch-history");
    setHistory([]);
  }

  return (
    <main className="bg-[#09090B] min-h-screen text-white pb-32" dir="rtl">
      {/* Header */}
      <div className="sticky top-0 z-20 bg-[#09090B]/95 backdrop-blur-xl border-b border-white/5 px-4 pt-safe pt-4 pb-3">
        <div className="flex items-center gap-3 mb-0.5">
          <button
            onClick={() => { navigate("/"); }}
            className="w-9 h-9 rounded-xl bg-white/6 border border-white/8 flex items-center justify-center active:scale-90 transition-transform shrink-0">
            <ChevronRight className="w-4 h-4 text-white/70" />
          </button>
          <h1 className="text-xl font-black font-['Cairo'] flex-1">سجل المشاهدة</h1>
          {history.length > 0 && (
            <button onClick={clearAll}
              className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-red-500/10 border border-red-500/20 text-red-400/80 text-xs font-bold font-['Cairo'] active:scale-90 transition-transform">
              <Trash2 className="w-3.5 h-3.5" />
              مسح الكل
            </button>
          )}
        </div>
        {history.length > 0 && (
          <p className="text-white/25 text-[11px] font-['Cairo'] mt-1 pr-1">{history.length} عنوان مشاهَد {userId && <span className="text-violet-400/60">· محفوظ بحسابك</span>}</p>
        )}
      </div>

      {/* Content */}
      <div className="px-4 mt-4">
        {loading ? (
          <div className="flex items-center justify-center py-28">
            <div className="w-8 h-8 rounded-full border-2 border-primary/30 border-t-primary animate-spin" />
          </div>
        ) : history.length === 0 ? (
          <motion.div
            initial={{ opacity: 0, y: 16 }} animate={{ opacity: 1, y: 0 }}
            className="flex flex-col items-center justify-center py-28 gap-5">
            <div className="w-20 h-20 rounded-3xl bg-white/4 border border-white/7 flex items-center justify-center">
              <History className="w-9 h-9 text-white/15" />
            </div>
            <div className="text-center">
              <p className="text-white/50 font-black font-['Cairo'] text-base">لا يوجد سجل مشاهدة</p>
              <p className="text-white/22 text-sm font-['Cairo'] mt-1">ابدأ بمشاهدة أنمي أو أنيميشن ليظهر هنا</p>
            </div>
            <Link href="/">
              <button className="px-6 py-2.5 bg-primary rounded-2xl text-white text-sm font-black font-['Cairo'] active:scale-95 transition-transform">
                اكتشف الآن
              </button>
            </Link>
          </motion.div>
        ) : (
          <div className="space-y-2.5">
            <AnimatePresence>
              {history.map((item, i) => {
                if (item.kind === "anime") {
                  const progress = getAnimeProgress(item.id, item.ep);
                  const playUrl = `/watch?anime=${item.id}&ep=${item.ep}&title=${encodeURIComponent(item.title)}`;
                  return (
                    <motion.div
                      key={`anime-${item.id}-${item.ep}`}
                      initial={{ opacity: 0, y: 8 }}
                      animate={{ opacity: 1, y: 0 }}
                      exit={{ opacity: 0, x: 40 }}
                      transition={{ delay: i * 0.03, duration: 0.2 }}
                      className="flex items-center gap-3 bg-[#111116] border border-white/6 rounded-2xl p-3">

                      {/* Cover */}
                      <Link href={`/anime/${item.id}`} className="shrink-0">
                        <div className="relative w-14 h-[78px] rounded-xl overflow-hidden bg-white/5">
                          {item.cover && <img src={item.cover} alt="" className="w-full h-full object-cover" loading="lazy"
                            onError={(e) => {
                              const img = e.currentTarget; img.onerror = null;
                              fetch(`${API_BASE}/api/anime/poster/${item.id}`).then(r => r.json()).then(d => { if (d.coverUrl) img.src = d.coverUrl; }).catch(() => {});
                            }} />}
                          {progress > 0 && (
                            <div className="absolute bottom-0 left-0 right-0 h-1 bg-white/15">
                              <div className="h-full bg-primary" style={{ width: `${Math.min(99, Math.round((progress / 1440) * 100))}%` }} />
                            </div>
                          )}
                        </div>
                      </Link>

                      {/* Info */}
                      <div className="flex-1 min-w-0">
                        <div className="flex items-center gap-1.5 mb-1">
                          <span className="flex items-center gap-1 px-1.5 py-[2px] rounded-md text-[9px] font-black font-['Cairo']"
                            style={{ background: "rgba(139,92,246,0.18)", color: "rgba(196,181,253,0.92)", border: "1px solid rgba(139,92,246,0.28)" }}>
                            <Tv className="w-2.5 h-2.5" />أنمي
                          </span>
                        </div>
                        <Link href={`/anime/${item.id}`}>
                          <p className="text-white/90 text-sm font-black font-['Cairo'] line-clamp-1 leading-tight">{item.title}</p>
                        </Link>
                        <div className="flex items-center gap-1.5 mt-1 flex-wrap">
                          <span className="text-[11px] font-bold text-primary font-['Cairo']">الحلقة {item.ep}</span>
                          {item.totalEps > 0 && (
                            <>
                              <span className="text-white/18 text-[9px]">·</span>
                              <span className="text-white/30 text-[10px] font-['Cairo']">من {item.totalEps}</span>
                            </>
                          )}
                          {progress > 5 && (
                            <>
                              <span className="text-white/18 text-[9px]">·</span>
                              <span className="text-white/35 text-[10px] font-mono">{fmtSec(progress)}</span>
                            </>
                          )}
                        </div>
                        <div className="flex items-center gap-1 mt-1">
                          <Clock className="w-2.5 h-2.5 text-white/22" />
                          <span className="text-white/28 text-[9px] font-['Cairo']">منذ {timeAgo(item.date)}</span>
                        </div>
                      </div>

                      {/* Actions */}
                      <div className="flex flex-col items-center gap-2 shrink-0">
                        <Link href={playUrl}>
                          <button className="w-10 h-10 rounded-xl bg-primary/15 border border-primary/25 flex items-center justify-center active:scale-90 transition-transform">
                            <Play className="w-4 h-4 text-primary fill-primary" />
                          </button>
                        </Link>
                        <button
                          onClick={() => removeAnime(item.serverId, item.id, item.ep)}
                          className="w-10 h-10 rounded-xl bg-white/4 border border-white/7 flex items-center justify-center active:scale-90 transition-transform">
                          <Trash2 className="w-3.5 h-3.5 text-white/25" />
                        </button>
                      </div>
                    </motion.div>
                  );
                }

                if (item.kind === "stardima") {
                  const progress = getStardimaProgress(item.providerTitleId, item.episodeId);
                  const playParams = new URLSearchParams({
                    providerTitleId: item.providerTitleId,
                    episodeId: item.episodeId,
                    episodeNumber: String(item.ep),
                    seasonNumber: String(item.season),
                    episodeTitle: item.episodeTitle || (item.mediaType === "movie" ? "الفيلم" : `الحلقة ${item.ep}`),
                    title: item.title,
                    mediaType: item.mediaType,
                    poster: item.cover,
                  });
                  const playUrl = `/stardima/servers?${playParams.toString()}`;
                  const detailUrl = `/stardima/title/${encodeURIComponent(item.providerTitleId)}`;
                  const isMovie = item.mediaType === "movie";
                  return (
                    <motion.div
                      key={`stardima-${item.providerTitleId}-${item.episodeId}`}
                      initial={{ opacity: 0, y: 8 }}
                      animate={{ opacity: 1, y: 0 }}
                      exit={{ opacity: 0, x: 40 }}
                      transition={{ delay: i * 0.03, duration: 0.2 }}
                      className="flex items-center gap-3 rounded-2xl border border-emerald-500/10 bg-[#0e1513] p-3">
                      <Link href={detailUrl} className="shrink-0">
                        <div className="relative h-[78px] w-14 overflow-hidden rounded-xl bg-white/5">
                          {item.cover && <img src={item.cover} alt="" className="h-full w-full object-cover" loading="lazy" />}
                          {progress > 0 && (
                            <div className="absolute bottom-0 left-0 right-0 h-1 bg-white/15">
                              <div className="h-full bg-emerald-400" style={{ width: `${Math.min(99, Math.round((progress / 7200) * 100))}%` }} />
                            </div>
                          )}
                        </div>
                      </Link>
                      <div className="min-w-0 flex-1">
                        <span className="mb-1 inline-flex items-center gap-1 rounded-md border border-emerald-400/20 bg-emerald-500/10 px-1.5 py-[2px] font-['Cairo'] text-[9px] font-black text-emerald-200">
                          {isMovie ? <Film className="h-2.5 w-2.5" /> : <Tv className="h-2.5 w-2.5" />}
                          StarDima · {isMovie ? "فيلم" : "مسلسل"}
                        </span>
                        <Link href={detailUrl}>
                          <p className="line-clamp-1 font-['Cairo'] text-sm font-black leading-tight text-white/90">{item.title}</p>
                        </Link>
                        <div className="mt-1 flex flex-wrap items-center gap-1.5">
                          <span className="font-['Cairo'] text-[11px] font-bold text-emerald-300">
                            {isMovie ? "الفيلم" : `${item.episodeTitle || `الحلقة ${item.ep}`} · الموسم ${item.season}`}
                          </span>
                          {progress > 5 ? <span className="font-mono text-[10px] text-white/35">{fmtSec(progress)}</span> : null}
                        </div>
                        <div className="mt-1 flex items-center gap-1">
                          <Clock className="h-2.5 w-2.5 text-white/22" />
                          <span className="font-['Cairo'] text-[9px] text-white/28">منذ {timeAgo(item.date)}</span>
                        </div>
                      </div>
                      <div className="flex shrink-0 flex-col items-center gap-2">
                        <Link href={playUrl}>
                          <button className="flex h-10 w-10 items-center justify-center rounded-xl border border-emerald-400/25 bg-emerald-500/15 active:scale-90"
                            aria-label="متابعة مشاهدة StarDima">
                            <Play className="h-4 w-4 fill-emerald-300 text-emerald-300" />
                          </button>
                        </Link>
                        <button onClick={() => removeStardima(item.providerTitleId, item.episodeId, item.serverId)}
                          aria-label="حذف من سجل المشاهدة"
                          className="flex h-10 w-10 items-center justify-center rounded-xl border border-white/7 bg-white/4 active:scale-90">
                          <Trash2 className="h-3.5 w-3.5 text-white/25" />
                        </button>
                      </div>
                    </motion.div>
                  );
                }

                /* ── Animation item ── */
                const progress = getAnimProgress(item.tmdbId, item.type, item.season, item.ep);
                const qs = new URLSearchParams({
                  id: item.tmdbId, type: item.type,
                  ep: String(item.ep), season: String(item.season),
                  title: item.title,
                });
                const playUrl = `/animation/watch?${qs.toString()}`;
                const detailUrl = `/animation/${item.type}/${item.tmdbId}`;
                const isMovie = item.type === "movie";

                return (
                  <motion.div
                    key={`anim-${item.tmdbId}-${item.type}-${item.ep}-${item.season}`}
                    initial={{ opacity: 0, y: 8 }}
                    animate={{ opacity: 1, y: 0 }}
                    exit={{ opacity: 0, x: 40 }}
                    transition={{ delay: i * 0.03, duration: 0.2 }}
                    className="flex items-center gap-3 bg-[#0e0e18] border border-cyan-500/10 rounded-2xl p-3">

                    {/* Cover */}
                    <Link href={detailUrl} className="shrink-0">
                      <div className="relative w-14 h-[78px] rounded-xl overflow-hidden bg-white/5">
                        {item.cover && <img src={item.cover} alt="" className="w-full h-full object-cover" loading="lazy"
                          onError={(e) => {
                            const img = e.currentTarget; img.onerror = null;
                            fetch(`${API_BASE}/api/anime/poster/${item.id}`).then(r => r.json()).then(d => { if (d.coverUrl) img.src = d.coverUrl; }).catch(() => {});
                          }} />}
                        {progress > 0 && (
                          <div className="absolute bottom-0 left-0 right-0 h-1 bg-white/15">
                            <div className="h-full bg-cyan-400" style={{ width: `${Math.min(99, Math.round((progress / 7200) * 100))}%` }} />
                          </div>
                        )}
                      </div>
                    </Link>

                    {/* Info */}
                    <div className="flex-1 min-w-0">
                      <div className="flex items-center gap-1.5 mb-1">
                        <span className="flex items-center gap-1 px-1.5 py-[2px] rounded-md text-[9px] font-black font-['Cairo']"
                          style={{ background: "rgba(6,182,212,0.16)", color: "rgba(103,232,249,0.92)", border: "1px solid rgba(6,182,212,0.26)" }}>
                          {isMovie ? <Film className="w-2.5 h-2.5" /> : <Tv className="w-2.5 h-2.5" />}
                          {isMovie ? "فيلم" : "مسلسل"}
                        </span>
                      </div>
                      <Link href={detailUrl}>
                        <p className="text-white/90 text-sm font-black font-['Cairo'] line-clamp-1 leading-tight">{item.title}</p>
                      </Link>
                      <div className="flex items-center gap-1.5 mt-1 flex-wrap">
                        {isMovie
                          ? <span className="text-[11px] font-bold text-cyan-400 font-['Cairo']">فيلم</span>
                          : <span className="text-[11px] font-bold text-cyan-400 font-['Cairo']">الحلقة {item.ep}</span>
                        }
                        {!isMovie && item.season > 0 && (
                          <>
                            <span className="text-white/18 text-[9px]">·</span>
                            <span className="text-white/30 text-[10px] font-['Cairo']">الموسم {item.season}</span>
                          </>
                        )}
                        {progress > 5 && (
                          <>
                            <span className="text-white/18 text-[9px]">·</span>
                            <span className="text-white/35 text-[10px] font-mono">{fmtSec(progress)}</span>
                          </>
                        )}
                      </div>
                      <div className="flex items-center gap-1 mt-1">
                        <Clock className="w-2.5 h-2.5 text-white/22" />
                        <span className="text-white/28 text-[9px] font-['Cairo']">منذ {timeAgo(item.date)}</span>
                      </div>
                    </div>

                    {/* Actions */}
                    <div className="flex flex-col items-center gap-2 shrink-0">
                      <Link href={playUrl}>
                        <button className="w-10 h-10 rounded-xl flex items-center justify-center active:scale-90 transition-transform"
                          style={{ background: "rgba(6,182,212,0.15)", border: "1px solid rgba(6,182,212,0.25)" }}>
                          <Play className="w-4 h-4 text-cyan-400 fill-cyan-400" />
                        </button>
                      </Link>
                      <button
                        onClick={() => removeAnim(item.tmdbId, item.type, item.ep, item.season)}
                        className="w-10 h-10 rounded-xl bg-white/4 border border-white/7 flex items-center justify-center active:scale-90 transition-transform">
                        <Trash2 className="w-3.5 h-3.5 text-white/25" />
                      </button>
                    </div>
                  </motion.div>
                );
              })}
            </AnimatePresence>
          </div>
        )}
      </div>
    </main>
  );
}
