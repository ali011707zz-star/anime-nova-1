import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import { useLocation, useSearch } from "wouter";
import { ArrowLeft, Loader2, RefreshCw, TriangleAlert } from "lucide-react";
import RiftPlayer from "@/components/player/RiftPlayer";
import { API_BASE } from "@/lib/apiBase";
import { useAuth } from "@/lib/auth-context";

type CatalogEpisode = {
  id: string | number;
  season_number: number;
  episode_number: number;
  episode_label?: string | null;
  title?: string | null;
};

type ResolvedMedia = {
  directUrl?: string;
  type?: "hls" | "mp4";
  quality?: string | null;
  serverName?: string;
  headers?: { Referer?: string; Origin?: string };
  health?: { state?: string };
  error?: string;
};

function safeNumber(value: unknown, fallback = 1) {
  const parsed = Number(value);
  return Number.isFinite(parsed) && parsed > 0 ? parsed : fallback;
}

function checkedHttpUrl(value: unknown) {
  const url = new URL(String(value || ""));
  if (!["http:", "https:"].includes(url.protocol) || url.username || url.password) {
    throw new Error("أعاد الخادم رابطًا غير صالح.");
  }
  return url.href;
}

function headerValue(value: unknown) {
  if (!value) return undefined;
  const url = new URL(String(value));
  if (!["http:", "https:"].includes(url.protocol) || url.username || url.password) {
    throw new Error("تعذر التحقق من ترويسات المصدر.");
  }
  return url.href;
}

function serverPageParams(current: URLSearchParams) {
  const params = new URLSearchParams(current);
  for (const key of ["serverId", "serverName", "quality"]) params.delete(key);
  return params;
}

function stableHistoryId(kind: string, key: string) {
  let hash = 2166136261;
  for (const char of `${kind}:${key}`) {
    hash ^= char.charCodeAt(0);
    hash = Math.imul(hash, 16777619);
  }
  return 100_000_000 + ((hash >>> 0) % 1_900_000_000);
}

function episodeParams(
  base: URLSearchParams,
  rows: CatalogEpisode[],
  index: number,
) {
  const episode = rows[index];
  const params = serverPageParams(base);
  params.set("episodeId", String(episode.id));
  params.set("episodeNumber", String(safeNumber(episode.episode_number)));
  params.set("seasonNumber", String(safeNumber(episode.season_number)));
  params.set("episodeTitle", episode.title || episode.episode_label || `الحلقة ${episode.episode_number}`);
  params.set("episodeIndex", String(index));
  params.set("totalEpisodes", String(rows.length));
  params.delete("prevEpisodeId");
  params.delete("prevEpisodeNumber");
  params.delete("prevSeasonNumber");
  params.delete("prevEpisodeTitle");
  params.delete("prevEpisodeIndex");
  params.delete("nextEpisodeId");
  params.delete("nextEpisodeNumber");
  params.delete("nextSeasonNumber");
  params.delete("nextEpisodeTitle");
  params.delete("nextEpisodeIndex");
  const previous = rows[index - 1];
  const next = rows[index + 1];
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

export default function StardimaWatchPage() {
  const [, navigate] = useLocation();
  const { user } = useAuth();
  const search = useSearch();
  const params = useMemo(() => new URLSearchParams(search), [search]);
  const serverId = params.get("serverId") || "";
  const providerTitleId = params.get("providerTitleId") || "";
  const episodeId = params.get("episodeId") || "";
  const title = params.get("title") || "StarDima";
  const episodeTitle = params.get("episodeTitle") || "الحلقة";
  const episodeNumber = safeNumber(params.get("episodeNumber"));
  const seasonNumber = safeNumber(params.get("seasonNumber"));
  const poster = params.get("poster") || "";
  const requestedQuality = params.get("quality") || "";
  const [media, setMedia] = useState<ResolvedMedia | null>(null);
  const [episodes, setEpisodes] = useState<CatalogEpisode[]>([]);
  const [loading, setLoading] = useState(true);
  const [resumeReady, setResumeReady] = useState(false);
  const [resumeTime, setResumeTime] = useState(0);
  const [error, setError] = useState("");
  const [retryKey, setRetryKey] = useState(0);
  const lastTimeRef = useRef(0);
  const lastSavedTimeRef = useRef(0);
  const progressKey = `stardima-progress:${providerTitleId}:${episodeId}`;
  const indexFromCatalog = episodes.findIndex((row) => String(row.id) === episodeId);
  const episodeIndex = indexFromCatalog >= 0
    ? indexFromCatalog
    : Math.max(0, Number(params.get("episodeIndex")) || 0);
  const totalEpisodes = episodes.length || Math.max(episodeIndex + 1, Number(params.get("totalEpisodes")) || 0);

  const backToServers = useCallback(() => {
    const nextParams = serverPageParams(params);
    navigate(`/stardima/servers?${nextParams.toString()}`);
  }, [navigate, params]);

  useEffect(() => {
    let alive = true;
    setResumeReady(false);
    try {
      const saved = Number(localStorage.getItem(progressKey) || 0);
      if (alive && Number.isFinite(saved) && saved > 0) {
        setResumeTime(saved);
        lastTimeRef.current = saved;
        lastSavedTimeRef.current = saved;
      } else if (alive) {
        setResumeTime(0);
        lastTimeRef.current = 0;
        lastSavedTimeRef.current = 0;
      }
    } catch {
      setResumeTime(0);
    } finally {
      if (alive) setResumeReady(true);
    }
    return () => { alive = false; };
  }, [progressKey]);

  useEffect(() => {
    if (!providerTitleId) {
      setEpisodes([]);
      return;
    }
    const controller = new AbortController();
    void fetch(
      `${API_BASE}/api/source-catalog/titles/stardima_catalog/${encodeURIComponent(providerTitleId)}`,
      { signal: controller.signal },
    )
      .then(async (response) => {
        if (!response.ok) return null;
        return await response.json() as { episodes?: CatalogEpisode[] };
      })
      .then((data) => {
        if (controller.signal.aborted) return;
        const rows = Array.isArray(data?.episodes) ? data.episodes : [];
        setEpisodes(rows.sort((a, b) =>
          safeNumber(a.season_number) - safeNumber(b.season_number) ||
          safeNumber(a.episode_number) - safeNumber(b.episode_number)
        ));
      })
      .catch(() => {
        if (!controller.signal.aborted) setEpisodes([]);
      });
    return () => controller.abort();
  }, [providerTitleId]);

  useEffect(() => {
    const controller = new AbortController();
    setLoading(true);
    setError("");
    setMedia(null);
    if (!/^\d+$/.test(serverId)) {
      setError("معرّف الخادم غير صالح. ارجع واختر خادمًا آخر.");
      setLoading(false);
      return () => controller.abort();
    }

    void fetch(`${API_BASE}/api/anime/stardima/resolve`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ serverId }),
      signal: controller.signal,
    })
      .then(async (response) => {
        const data = await response.json().catch(() => ({})) as ResolvedMedia;
        if (!response.ok) throw new Error(data.error || "تعذر فحص الخادم المختار.");
        if (data.health?.state !== "verified") throw new Error("لم يجتز الخادم فحص الوسائط.");
        if (data.type !== "hls" && data.type !== "mp4") throw new Error("صيغة الوسائط غير مدعومة.");
        const checked: ResolvedMedia = {
          ...data,
          directUrl: checkedHttpUrl(data.directUrl),
          headers: {
            ...(headerValue(data.headers?.Referer) ? { Referer: headerValue(data.headers?.Referer) } : {}),
            ...(headerValue(data.headers?.Origin) ? { Origin: headerValue(data.headers?.Origin) } : {}),
          },
        };
        if (!controller.signal.aborted) setMedia(checked);
      })
      .catch((resolveError) => {
        if (!controller.signal.aborted) {
          setMedia(null);
          setError(resolveError instanceof Error ? resolveError.message : "تعذر استخراج رابط الوسائط.");
        }
      })
      .finally(() => {
        if (!controller.signal.aborted) setLoading(false);
      });

    return () => controller.abort();
  }, [retryKey, serverId]);

  useEffect(() => {
    if (!media?.directUrl || !resumeReady || !providerTitleId || !episodeId) return;
    const mediaType = params.get("mediaType") === "movie" ? "movie" : "series";
    try {
      const raw = JSON.parse(localStorage.getItem("stardima-watch-history") || "[]");
      const history = Array.isArray(raw) ? raw : [];
      const entry = {
        providerTitleId,
        episodeId,
        mediaType,
        episodeTitle,
        title,
        cover: poster,
        ep: episodeNumber,
        season: seasonNumber,
        date: new Date().toISOString(),
      };
      const remaining = history.filter((item: any) =>
        !(String(item.providerTitleId) === providerTitleId && String(item.episodeId) === episodeId)
      );
      localStorage.setItem("stardima-watch-history", JSON.stringify([entry, ...remaining].slice(0, 60)));
    } catch { /* private browsing may disable storage */ }
    if (user?.id) {
      const animeType = `stardima:${encodeURIComponent(providerTitleId)}:${encodeURIComponent(episodeId)}:` +
        `${encodeURIComponent(mediaType)}:${encodeURIComponent(`الموسم ${seasonNumber}`)}:` +
        encodeURIComponent(episodeTitle);
      fetch(`${API_BASE}/api/user/history`, {
        method: "POST",
        credentials: "include",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          animeId: stableHistoryId("stardima", providerTitleId),
          animeTitle: title,
          animeCover: poster,
          animeType,
          episodeNumber,
          seasonNumber,
          mediaType,
        }),
      }).catch(() => {});
    }
  }, [episodeId, episodeNumber, media?.directUrl, params, poster, providerTitleId, resumeReady, seasonNumber, title, user?.id]);

  const saveProgress = useCallback((position = lastTimeRef.current) => {
    if (position <= 10 || !providerTitleId || !episodeId) return;
    lastTimeRef.current = position;
    lastSavedTimeRef.current = position;
    try { localStorage.setItem(progressKey, String(Math.floor(position))); } catch { /* storage can be unavailable */ }
  }, [episodeId, progressKey, providerTitleId]);

  const onTimeUpdate = useCallback((position: number) => {
    lastTimeRef.current = position;
    if (position - lastSavedTimeRef.current >= 15) saveProgress(position);
  }, [saveProgress]);

  const navigateToEpisode = useCallback((targetIndex: number, fallbackId?: string, fallbackEp?: string, fallbackSeason?: string, fallbackTitle?: string) => {
    if (episodes.length && targetIndex >= 0 && targetIndex < episodes.length) {
      const nextParams = episodeParams(params, episodes, targetIndex);
      navigate(`/stardima/servers?${nextParams.toString()}`);
      return;
    }
    if (!fallbackId) return;
    const nextParams = serverPageParams(params);
    nextParams.set("episodeId", fallbackId);
    nextParams.set("episodeNumber", fallbackEp || "1");
    nextParams.set("seasonNumber", fallbackSeason || "1");
    nextParams.set("episodeTitle", fallbackTitle || "الحلقة");
    nextParams.set("episodeIndex", String(Math.max(0, targetIndex)));
    navigate(`/stardima/servers?${nextParams.toString()}`);
  }, [episodes, navigate, params]);

  if (media?.directUrl && resumeReady) {
    const previousId = params.get("prevEpisodeId") || "";
    const nextId = params.get("nextEpisodeId") || "";
    const currentIndex = indexFromCatalog >= 0 ? indexFromCatalog : episodeIndex;
    return (
      <RiftPlayer
        key={`${serverId}:${episodeId}:${retryKey}`}
        src={media.directUrl}
        title={`${title} · ${episodeTitle}`}
        epTitle={`${episodeTitle} · الموسم ${seasonNumber} · الحلقة ${episodeNumber}`}
        ep={currentIndex + 1}
        totalEps={Math.max(currentIndex + 1, totalEpisodes)}
        resumeTime={resumeTime}
        qualityLabel={String(media.quality || requestedQuality).replace(/p$/i, "")}
        isHls={media.type === "hls"}
        hlsHeaders={media.headers}
        onBack={() => { saveProgress(); backToServers(); }}
        onTimeUpdate={onTimeUpdate}
        onPrevEp={currentIndex > 0
          ? () => { saveProgress(); navigateToEpisode(currentIndex - 1, previousId, params.get("prevEpisodeNumber") || "", params.get("prevSeasonNumber") || "", params.get("prevEpisodeTitle") || ""); }
          : previousId
            ? () => { saveProgress(); navigateToEpisode(currentIndex - 1, previousId, params.get("prevEpisodeNumber") || "", params.get("prevSeasonNumber") || "", params.get("prevEpisodeTitle") || ""); }
            : undefined}
        onNextEp={currentIndex + 1 < episodes.length || nextId
          ? () => { saveProgress(); navigateToEpisode(currentIndex + 1, nextId, params.get("nextEpisodeNumber") || "", params.get("nextSeasonNumber") || "", params.get("nextEpisodeTitle") || ""); }
          : undefined}
        onFail={() => { saveProgress(); backToServers(); }}
      />
    );
  }

  return (
    <main className="grid min-h-screen place-items-center bg-[#09090b] px-5 text-white" dir="rtl">
      <section className="flex max-w-md flex-col items-center gap-4 text-center">
        <button onClick={backToServers} data-testid="button-stardima-watch-back"
          className="fixed right-4 top-4 grid h-10 w-10 place-items-center rounded-xl border border-white/10 bg-white/5"
          aria-label="العودة لاختيار الخادم"><ArrowLeft size={18} /></button>
        {loading ? <Loader2 className="animate-spin text-emerald-300" size={28} /> : <TriangleAlert className="text-amber-300" size={28} />}
        <h1 className="font-['Cairo'] text-lg font-bold">{loading ? "جارٍ تجهيز المشغل" : "تعذر تشغيل هذا الخادم"}</h1>
        <p className="font-['Cairo'] text-sm leading-7 text-white/55">
          {loading
            ? "يتم التحقق من الرابط واستخراج الوسائط قبل بدء التشغيل."
            : error || "لم ينجح فحص الوسائط. اختر خادمًا آخر لهذه الحلقة."}
        </p>
        {!loading ? (
          <button onClick={() => setRetryKey((value) => value + 1)} data-testid="button-retry-stardima-resolve"
            className="inline-flex items-center gap-2 rounded-xl border border-emerald-400/25 bg-emerald-500/10 px-4 py-2 font-['Cairo'] text-sm text-emerald-200">
            <RefreshCw size={15} /> إعادة الفحص
          </button>
        ) : null}
      </section>
    </main>
  );
}
