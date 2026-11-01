import { useCallback, useEffect, useMemo, useState } from "react";
import { useLocation, useParams } from "wouter";
import { ArrowLeft, BadgeCheck, Film, Loader2, Play, RefreshCw } from "lucide-react";
import { API_BASE } from "@/lib/apiBase";
import { catalogBadge, type StardimaCatalogTitle } from "@/lib/dubbedCatalogUtils.mjs";

type CatalogEpisode = {
  id: string | number;
  provider_episode_id: string;
  season_number: number;
  episode_number: number;
  episode_label?: string | null;
  title?: string | null;
  episode_status?: string | null;
};

type TitleResponse = {
  title?: StardimaCatalogTitle;
  episodes?: CatalogEpisode[];
};

function progressKey(titleId: string, episodeId: string | number) {
  return `stardima-progress:${titleId}:${episodeId}`;
}

function readProgress(titleId: string, episodeId: string | number) {
  try {
    const parsed = Number(localStorage.getItem(progressKey(titleId, episodeId)) || 0);
    return Number.isFinite(parsed) && parsed > 0 ? parsed : 0;
  } catch {
    return 0;
  }
}

function safeNumber(value: unknown, fallback = 1) {
  const parsed = Number(value);
  return Number.isFinite(parsed) && parsed > 0 ? parsed : fallback;
}

function makeEpisodeParams(
  titleId: string,
  title: StardimaCatalogTitle,
  episodes: CatalogEpisode[],
  index: number,
) {
  const current = episodes[index];
  const previous = episodes[index - 1];
  const next = episodes[index + 1];
  const params = new URLSearchParams({
    providerTitleId: titleId,
    episodeId: String(current.id),
    title: title.title_ar || title.title || title.title_en || "StarDima",
    episodeTitle: current.title || current.episode_label || `الحلقة ${current.episode_number}`,
    episodeNumber: String(safeNumber(current.episode_number)),
    seasonNumber: String(safeNumber(current.season_number)),
    episodeIndex: String(index),
    totalEpisodes: String(episodes.length),
    mediaType: title.media_type || "series",
    poster: title.poster_url || "",
  });
  if (previous) {
    params.set("prevEpisodeId", String(previous.id));
    params.set("prevEpisodeNumber", String(safeNumber(previous.episode_number)));
    params.set("prevSeasonNumber", String(safeNumber(previous.season_number)));
    params.set("prevEpisodeTitle", previous.title || previous.episode_label || `الحلقة ${previous.episode_number}`);
    params.set("prevEpisodeIndex", String(index - 1));
  }
  if (next) {
    params.set("nextEpisodeId", String(next.id));
    params.set("nextEpisodeNumber", String(safeNumber(next.episode_number)));
    params.set("nextSeasonNumber", String(safeNumber(next.season_number)));
    params.set("nextEpisodeTitle", next.title || next.episode_label || `الحلقة ${next.episode_number}`);
    params.set("nextEpisodeIndex", String(index + 1));
  }
  return params;
}

export default function StardimaTitlePage() {
  const { providerTitleId = "" } = useParams<{ providerTitleId: string }>();
  const [, navigate] = useLocation();
  const [title, setTitle] = useState<StardimaCatalogTitle | null>(null);
  const [episodes, setEpisodes] = useState<CatalogEpisode[]>([]);
  const [selectedSeason, setSelectedSeason] = useState<number | null>(null);
  const [progress, setProgress] = useState<Record<string, number>>({});
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [retryKey, setRetryKey] = useState(0);

  const orderedEpisodes = useMemo(() => [...episodes].sort((a, b) =>
    safeNumber(a.season_number) - safeNumber(b.season_number) ||
    safeNumber(a.episode_number) - safeNumber(b.episode_number)
  ), [episodes]);
  const seasons = useMemo(() => [...new Set(orderedEpisodes.map((episode) =>
    safeNumber(episode.season_number)
  ))].sort((a, b) => a - b), [orderedEpisodes]);
  const visibleEpisodes = selectedSeason == null
    ? orderedEpisodes
    : orderedEpisodes.filter((episode) => safeNumber(episode.season_number) === selectedSeason);

  const loadTitle = useCallback(async (signal: AbortSignal) => {
    if (!providerTitleId) {
      setError("معرّف العنوان غير موجود.");
      setLoading(false);
      return;
    }
    setLoading(true);
    setError("");
    try {
      const response = await fetch(
        `${API_BASE}/api/source-catalog/titles/stardima_catalog/${encodeURIComponent(providerTitleId)}`,
        { signal },
      );
      const data = await response.json().catch(() => ({})) as TitleResponse;
      if (!response.ok) throw new Error(response.status === 404
        ? "العنوان غير موجود في كتالوج StarDima."
        : "تعذر تحميل تفاصيل العنوان.");
      if (signal.aborted) return;
      const rows = Array.isArray(data.episodes) ? data.episodes : [];
      const sorted = [...rows].sort((a, b) =>
        safeNumber(a.season_number) - safeNumber(b.season_number) ||
        safeNumber(a.episode_number) - safeNumber(b.episode_number)
      );
      setTitle(data.title || null);
      setEpisodes(sorted);
      const firstSeason = sorted.length ? safeNumber(sorted[0].season_number) : 1;
      setSelectedSeason(firstSeason);
    } catch (loadError) {
      if (!signal.aborted) setError(loadError instanceof Error ? loadError.message : "تعذر تحميل العنوان.");
    } finally {
      if (!signal.aborted) setLoading(false);
    }
  }, [providerTitleId]);

  useEffect(() => {
    const controller = new AbortController();
    void loadTitle(controller.signal);
    return () => controller.abort();
  }, [loadTitle, retryKey]);

  useEffect(() => {
    if (!providerTitleId || orderedEpisodes.length === 0) return;
    const nextProgress: Record<string, number> = {};
    for (const episode of orderedEpisodes) {
      const saved = readProgress(providerTitleId, episode.id);
      if (saved > 0) nextProgress[String(episode.id)] = saved;
    }
    setProgress(nextProgress);
  }, [orderedEpisodes, providerTitleId]);

  const openEpisode = (episode: CatalogEpisode) => {
    const index = orderedEpisodes.findIndex((row) => String(row.id) === String(episode.id));
    if (!title || index < 0) return;
    const params = makeEpisodeParams(providerTitleId, title, orderedEpisodes, index);
    navigate(`/stardima/servers?${params.toString()}`);
  };

  const titleText = title?.title_ar || title?.title || title?.title_en || "StarDima";
  const badge = title ? catalogBadge(title) : undefined;

  return (
    <main className="min-h-screen bg-[#09090b] text-white" dir="rtl">
      <header className="sticky top-0 z-20 flex items-center gap-3 border-b border-white/10 bg-[#09090b]/95 px-4 py-3 backdrop-blur">
        <button onClick={() => navigate("/dubbed")} data-testid="button-stardima-title-back"
          className="grid h-10 w-10 place-items-center rounded-xl border border-white/10 bg-white/5"
          aria-label="العودة إلى مكتبة المدبلج والمترجم">
          <ArrowLeft size={19} />
        </button>
        <div className="min-w-0 flex-1">
          <h1 className="truncate font-['Cairo'] text-base font-bold">{titleText}</h1>
          <p className="font-['Cairo'] text-[11px] text-white/45">StarDima · الحلقات ومصادر التشغيل</p>
        </div>
      </header>

      {loading && !title ? (
        <div className="grid min-h-[55vh] place-items-center"><Loader2 className="animate-spin text-emerald-400" /></div>
      ) : error && !title ? (
        <div className="mx-auto flex min-h-[55vh] max-w-xl flex-col items-center justify-center gap-3 px-6 text-center">
          <p className="font-['Cairo'] text-sm text-white/65">{error}</p>
          <button onClick={() => setRetryKey((value) => value + 1)} data-testid="button-retry-stardima-title"
            className="inline-flex items-center gap-2 rounded-xl border border-emerald-400/25 bg-emerald-500/10 px-4 py-2 font-['Cairo'] text-sm text-emerald-200">
            <RefreshCw size={15} /> إعادة المحاولة
          </button>
        </div>
      ) : title ? (
        <>
          <section className="mx-auto flex max-w-5xl flex-col gap-5 px-4 py-6 sm:flex-row sm:items-end sm:px-6">
            <div className="mx-auto w-36 shrink-0 overflow-hidden rounded-2xl border border-white/10 bg-white/5 sm:mx-0 sm:w-44">
              {title.poster_url ? (
                <img src={title.poster_url} alt={titleText} className="aspect-[2/3] w-full object-cover" />
              ) : (
                <div className="grid aspect-[2/3] place-items-center text-3xl text-white/30"><Film /></div>
              )}
            </div>
            <div className="flex-1 space-y-3 text-center sm:text-right">
              <div className="flex flex-wrap justify-center gap-2 sm:justify-start">
                <span className="rounded-full border border-white/10 bg-white/5 px-3 py-1 font-['Cairo'] text-[10px] text-white/70">
                  {title.media_type === "movie" ? "فيلم" : "مسلسل"}
                </span>
                {badge ? <span className="rounded-full border border-emerald-400/25 bg-emerald-500/10 px-3 py-1 font-['Cairo'] text-[10px] text-emerald-200">{badge}</span> : null}
                {title.release_year ? <span className="rounded-full border border-white/10 bg-white/5 px-3 py-1 font-['Cairo'] text-[10px] text-white/60">{title.release_year}</span> : null}
              </div>
              <h2 className="font-['Cairo'] text-2xl font-extrabold leading-relaxed sm:text-3xl">{titleText}</h2>
              {title.title_en && title.title_en !== titleText ? <p className="font-['Cairo'] text-sm text-white/45">{title.title_en}</p> : null}
              <div className="flex flex-wrap justify-center gap-2 text-xs text-white/55 sm:justify-start">
                <span className="rounded-lg bg-white/5 px-2.5 py-1">{orderedEpisodes.length} حلقة مسجلة</span>
                {seasons.length > 1 ? <span className="rounded-lg bg-white/5 px-2.5 py-1">{seasons.length} مواسم</span> : null}
                {title.classification?.status === "manually_reviewed" || title.classification?.status === "classified"
                  ? <span className="inline-flex items-center gap-1 rounded-lg bg-white/5 px-2.5 py-1"><BadgeCheck size={12} /> تصنيف موثّق</span>
                  : null}
              </div>
            </div>
          </section>

          <section className="mx-auto max-w-5xl px-4 pb-12 sm:px-6">
            <div className="mb-4 flex items-center justify-between gap-3">
              <h3 className="font-['Cairo'] text-lg font-bold">الحلقات</h3>
              <span className="font-['Cairo'] text-xs text-white/45">{visibleEpisodes.length} حلقة</span>
            </div>
            {seasons.length > 1 ? (
              <div className="mb-4 flex gap-2 overflow-x-auto pb-2">
                {seasons.map((season) => (
                  <button key={season} onClick={() => setSelectedSeason(season)}
                    data-testid={`button-stardima-season-${season}`}
                    className={`shrink-0 rounded-xl border px-4 py-2 font-['Cairo'] text-xs font-bold ${
                      selectedSeason === season
                        ? "border-emerald-400/40 bg-emerald-500/15 text-emerald-200"
                        : "border-white/10 bg-white/5 text-white/60"
                    }`}>
                    الموسم {season}
                  </button>
                ))}
              </div>
            ) : null}

            {visibleEpisodes.length ? (
              <div className="grid gap-2 sm:grid-cols-2">
                {visibleEpisodes.map((episode) => {
                  const saved = progress[String(episode.id)] || 0;
                  const index = orderedEpisodes.findIndex((row) => String(row.id) === String(episode.id));
                  return (
                    <button key={episode.id} onClick={() => openEpisode(episode)}
                      data-testid={`button-stardima-episode-${episode.id}`}
                      className="group flex items-center gap-3 rounded-2xl border border-white/10 bg-white/[0.035] p-3 text-right transition hover:border-emerald-400/30 hover:bg-white/[0.07]">
                      <span className="grid h-11 w-11 shrink-0 place-items-center rounded-xl bg-emerald-500/10 text-emerald-300">
                        <Play size={17} fill="currentColor" />
                      </span>
                      <span className="min-w-0 flex-1">
                        <span className="block truncate font-['Cairo'] text-sm font-bold text-white">
                          {episode.title || episode.episode_label || `الحلقة ${safeNumber(episode.episode_number)}`}
                        </span>
                        <span className="mt-0.5 block font-['Cairo'] text-[11px] text-white/45">
                          الموسم {safeNumber(episode.season_number)} · الحلقة {safeNumber(episode.episode_number)}
                          {saved > 0 ? ` · متابعة ${Math.floor(saved / 60)} دقيقة` : ""}
                        </span>
                      </span>
                      {index >= 0 ? <span className="text-[10px] text-white/25">{index + 1}</span> : null}
                    </button>
                  );
                })}
              </div>
            ) : (
              <div className="rounded-2xl border border-white/10 bg-white/[0.03] p-8 text-center font-['Cairo'] text-sm text-white/50">
                لا توجد حلقات مسجلة لهذا العنوان حتى الآن.
              </div>
            )}
          </section>
        </>
      ) : null}
    </main>
  );
}
