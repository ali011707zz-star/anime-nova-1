import React, { useState, useEffect, useRef, useCallback, useMemo } from "react";
import {
  View, Text, ActivityIndicator, ScrollView,
  StyleSheet, Platform, Image, I18nManager,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { RiftPlayer, PlayerSource } from "@/components/RiftPlayer";
import { getBaseUrl } from "@/utils/api";
import { getAuthToken, getDownloadToken } from "@/utils/secureApi";
import { getWatchContentId, useApp } from "@/context/AppContext";
import { ensureWatchAccess } from "@/utils/adPolicy";
import { startMobileWatchAnalytics } from "@/utils/analytics";
import { RewardedAdPrompt } from "@/components/RewardedAdPrompt";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable, useTvMetrics } from "@/utils/tv";
import { useColors } from "@/hooks/useColors";
import { useWatchPlayerOrientation } from "@/utils/watchOrientation";
import { createPlaybackTraceId, withPlaybackTrace } from "@/utils/playbackTrace";
import { inferDubbedSourceFromKey, parseCarateenEpisodeUrl } from "@/utils/carateenEpisodeRef.mjs";
import {
  ActiveDownload,
  formatFileSize,
  getActiveDownloadsSnapshot,
  getActiveSiteDownload,
  getDownloads,
  makeDownloadId,
  startGlobalDownload,
  subscribeActiveDownloads,
} from "@/utils/downloadManager";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
const ROW_LTR = I18nManager.isRTL ? "row-reverse" : "row";
const ALIGN_RIGHT = I18nManager.isRTL ? "flex-start" : "flex-end";

interface DubbedEpRef {
  number: number;
  title: string;
  url: string;
  seasonLabel: string;
  epId?: string;
  videoId?: string;
  watchUrl?: string;
}

type DubbedSlotState = "checking" | "available" | "fetching" | "failed";

interface DubbedServerSlot {
  key: string;
  site: string;
  shortName: string;
  label: string;
  quality: "720p" | "1080p";
  mode: "api" | "direct";
  state: DubbedSlotState;
  serverId?: string;
}

export default function DubbedWatchScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router  = useRouter();
  const { tv: tvMode } = useTvMetrics();
  const topPad  = Platform.OS === "web" ? 0 : insets.top;

  const {
    epUrl, series, title, ep, season, poster, totalEps: totalEpsParam,
    provider: providerParam, showId: showIdParam, episodeId: episodeIdParam, videoId: videoIdParam,
    watchUrl: watchUrlParam, slug: slugParam, isMovie: isMovieParam,
  } = useLocalSearchParams<{
    epUrl: string; series: string; title: string; ep: string; season: string;
    poster: string; at: string; totalEps?: string; provider?: string; showId?: string; episodeId?: string; videoId?: string;
    watchUrl?: string; slug?: string; isMovie?: string;
  }>();
  const parsedEpisodeRef = parseCarateenEpisodeUrl(epUrl);
  const inferredSeriesRef = inferDubbedSourceFromKey(series, epUrl);
  const requestedProvider = Array.isArray(providerParam) ? providerParam[0] : providerParam;
  const requestedShowId = Array.isArray(showIdParam) ? showIdParam[0] : showIdParam;
  const requestedSlug = Array.isArray(slugParam) ? slugParam[0] : slugParam;
  const requestedEpisodeId = Array.isArray(episodeIdParam) ? episodeIdParam[0] : episodeIdParam;
  const requestedVideoId = Array.isArray(videoIdParam) ? videoIdParam[0] : videoIdParam;
  const requestedWatchUrl = Array.isArray(watchUrlParam) ? watchUrlParam[0] : watchUrlParam;
  const isMovieEntry = (Array.isArray(isMovieParam) ? isMovieParam[0] : isMovieParam) === "1" || season === "الفيلم" || /\/movie-/i.test(epUrl || "");
  const provider =
    requestedProvider === "sp" || requestedProvider === "carateen" || requestedProvider === "sd2" || requestedProvider === "az"
      ? requestedProvider
      : parsedEpisodeRef?.provider || inferredSeriesRef?.provider;
  const showId = requestedShowId || requestedSlug || parsedEpisodeRef?.showId || inferredSeriesRef?.showId || "";
  const episodeId = requestedEpisodeId || parsedEpisodeRef?.episodeId || inferredSeriesRef?.episodeId || "";
  const isAzSource = provider === "az";
  const isSd2Source = provider === "sd2";
  const isCarateenSource = provider === "sp" || provider === "carateen";
  const playbackTraceId = useMemo(() => createPlaybackTraceId(), [epUrl, episodeId]);

  const { addToHistory, watchHistory } = useApp();
  const [screen, setScreen] = useState<"picker" | "player">("picker");
  const [sources, setSources] = useState<PlayerSource[]>([]);
  const [selectedSlotKey, setSelectedSlotKey] = useState<string | null>(null);
  const slotsRef = useRef<DubbedServerSlot[]>([]);
  const selectedSlotKeyRef = useRef<string | null>(null);
  selectedSlotKeyRef.current = selectedSlotKey;
  const failedSlotKeysRef = useRef<Set<string>>(new Set());
  const [slots, setSlots] = useState<DubbedServerSlot[]>([]);
  slotsRef.current = slots;
  const [checkingAvailability, setCheckingAvailability] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [resumeTime, setResumeTime] = useState(0);
  const [episodeList, setEpisodeList] = useState<DubbedEpRef[]>([]);
  const [dlStates, setDlStates] = useState<Record<string, "idle" | "fetching" | "downloading" | "done" | "error">>({});
  const [dlProgress, setDlProgress] = useState<Record<string, number>>({});

  const mountedRef = useRef(true);
  const ctrlRef = useRef<AbortController | null>(null);
  const checkCtrlRef = useRef<AbortController | null>(null);
  const retryTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const autoRetryCountRef = useRef(0);
  const lastTimeRef = useRef(0);
  const lastDurationRef = useRef(0);
  const savedOnExitRef = useRef(false);
  const preloadedMediaRef = useRef<{ url: string; contentType: "hls" | "progressive"; rawUrl?: string; serverId?: string } | null>(null);

  const onToggleOrientation = useWatchPlayerOrientation(screen === "player" && sources.length > 0, tvMode);

  const episodeNumber = Math.max(1, parseInt(ep || "1", 10) || 1);
  const totalEpsCount = Math.max(episodeList.length, parseInt(totalEpsParam || "0", 10) || 0);
  const contentKey = (isAzSource && showId) ? `az:${showId}` : (isSd2Source && showId) ? `sd2:${showId}` : (isCarateenSource && provider && showId) ? `carateen:${provider}:${showId}` : (series || epUrl || "");
  const numericAnimeId = useMemo(() => getWatchContentId("dubbed", contentKey), [contentKey]);
  const posterUrl = (() => {
    if (!poster) return "";
    try { return decodeURIComponent(poster); } catch { return poster; }
  })();

  /* ── Load Series Episode List for Prev/Next Navigation & ID Resolution ── */
  useEffect(() => {
    let cancelled = false;
    const BASE = getBaseUrl();
    (async () => {
      try {
        if (isSd2Source && showId) {
          const r = await fetch(
            `${BASE}/api/dubbed/sd2/episodes?slug=${encodeURIComponent(showId)}&mediaType=${isMovieEntry ? "movie" : "series"}`,
          );
          if (!r.ok || cancelled) return;
          const d = await r.json();
          const flat: DubbedEpRef[] = [];
          const seasons = Array.isArray(d?.seasons) ? d.seasons : [];
          for (const s of seasons) {
            const sLabel = s.label || "الموسم 1";
            for (const item of s.episodes || []) {
              const epIdVal = String(item.epId ?? item.id ?? "").trim();
              const numVal = Number(item.number) || flat.length + 1;
              flat.push({
                number: numVal,
                title: item.title || `الحلقة ${numVal}`,
                url: item.url || (epIdVal ? `carateen://sd2/${showId}/${epIdVal}` : ""),
                seasonLabel: sLabel,
                epId: epIdVal || undefined,
                watchUrl: String(item.watchUrl || ""),
              });
            }
          }
          if (!cancelled && flat.length > 0) setEpisodeList(flat);
        } else if (isCarateenSource && provider && showId) {
          const r = await fetch(
            `${BASE}/api/dubbed/carateen/episodes?provider=${encodeURIComponent(provider)}&showId=${encodeURIComponent(showId)}&id=${encodeURIComponent(showId)}`,
          );
          if (!r.ok || cancelled) return;
          const d = await r.json();
          const flat: DubbedEpRef[] = [];
          const seasons = Array.isArray(d?.seasons) ? d.seasons : [];
          if (seasons.length > 0) {
            for (const s of seasons) {
              const sLabel = s.label || "الموسم 1";
              for (const item of s.episodes || []) {
                const epIdVal = String(item.epId ?? item.id ?? "").trim();
                const numVal = Number(item.number) || flat.length + 1;
                flat.push({
                  number: numVal,
                  title: item.title || item.pref || `الحلقة ${numVal}`,
                  url: item.url || (epIdVal ? `carateen://${provider}/${showId}/${epIdVal}` : ""),
                  seasonLabel: sLabel,
                  epId: epIdVal || undefined,
                  videoId: item.video_id ? String(item.video_id) : undefined,
                });
              }
            }
          } else if (Array.isArray(d?.episodes)) {
            for (let i = 0; i < d.episodes.length; i++) {
              const item = d.episodes[i];
              const epIdVal = String(item.epId ?? item.id ?? "").trim();
              const numVal = Number(item.number ?? item.episode_number ?? i + 1) || i + 1;
              flat.push({
                number: numVal,
                title: item.title || item.pref || `الحلقة ${numVal}`,
                url: item.url || (epIdVal ? `carateen://${provider}/${showId}/${epIdVal}` : ""),
                seasonLabel: "الموسم 1",
                epId: epIdVal || undefined,
                videoId: item.video_id ? String(item.video_id) : undefined,
              });
            }
          }
          if (!cancelled && flat.length > 0) setEpisodeList(flat);
        } else if (isAzSource && showId) {
          const seasonNumMatch = String(season || "").match(/(\d+)/);
          const seasonParam = seasonNumMatch ? `&season=${encodeURIComponent(seasonNumMatch[1])}` : "";
          const r = await fetch(
            `${BASE}/api/dubbed/animezid/detail?slug=${encodeURIComponent(showId)}${seasonParam}`,
          );
          if (!r.ok || cancelled) return;
          const d = await r.json();
          const flat: DubbedEpRef[] = [];
          const seasonLbl = season || `الموسم ${d?.activeSeason || 1}`;
          for (const item of d?.episodes || []) {
            const vidVal = String(item.vid || "").trim();
            const numVal = Number(item.number) || flat.length + 1;
            flat.push({
              number: numVal,
              title: item.title || `الحلقة ${numVal}`,
              url: item.watchUrl || "",
              seasonLabel: seasonLbl,
              epId: vidVal || undefined,
              watchUrl: String(item.watchUrl || ""),
            });
          }
          if (!cancelled && flat.length > 0) setEpisodeList(flat);
        } else if (!isAzSource && !isSd2Source && !isCarateenSource) {
          let targetSeries = series && series !== "https:%" && !series.endsWith(":%") ? series : "";
          const parseAtEpisodes = (d: any): DubbedEpRef[] => {
            const seasons = Array.isArray(d?.seasons) ? d.seasons : [];
            const flat: DubbedEpRef[] = [];
            if (seasons.length > 0) {
              for (const s of seasons) {
                const sLabel = s.label || "الموسم 1";
                for (const item of s.episodes || []) {
                  flat.push({
                    number: Number(item.number) || flat.length + 1,
                    title: item.title || `الحلقة ${item.number || flat.length + 1}`,
                    url: item.url || "",
                    seasonLabel: sLabel,
                  });
                }
              }
            } else if (Array.isArray(d?.episodes)) {
              for (const item of d.episodes) {
                flat.push({
                  number: Number(item.number) || flat.length + 1,
                  title: item.title || `الحلقة ${item.number || flat.length + 1}`,
                  url: item.url || "",
                  seasonLabel: season || "الحلقات",
                });
              }
              flat.sort((a, b) => a.number - b.number);
            }
            return flat;
          };
          let flat: DubbedEpRef[] = [];
          if (targetSeries) {
            const r = await fetch(`${BASE}/api/dubbed/episodes?series=${encodeURIComponent(targetSeries)}`);
            if (r.ok && !cancelled) {
              flat = parseAtEpisodes(await r.json());
            }
          }
          if (flat.length === 0 && title && !cancelled) {
            const sr = await fetch(`${BASE}/api/dubbed/search?q=${encodeURIComponent(title)}`);
            if (sr.ok && !cancelled) {
              const sd = await sr.json();
              const results = Array.isArray(sd?.results) ? sd.results : [];
              const matched = results.find((item: any) => item?.title === title) || results[0];
              const fallbackSeries = matched?.seasons?.[0]?.arabicToonsId || matched?.key || "";
              if (fallbackSeries) {
                const r2 = await fetch(`${BASE}/api/dubbed/episodes?series=${encodeURIComponent(fallbackSeries)}`);
                if (r2.ok && !cancelled) {
                  flat = parseAtEpisodes(await r2.json());
                }
              }
            }
          }
          if (!cancelled && flat.length > 0) setEpisodeList(flat);
        }
      } catch {}
    })();
    return () => { cancelled = true; };
  }, [isAzSource, isSd2Source, isCarateenSource, isMovieEntry, provider, showId, series, season]);

  const currentEpIndex = useMemo(() => {
    if (!episodeList.length) return -1;
    if (episodeId) {
      const byEpId = episodeList.findIndex((item) => item.epId === episodeId);
      if (byEpId >= 0) return byEpId;
    }
    const byUrl = epUrl ? episodeList.findIndex((item) => item.url === epUrl) : -1;
    if (byUrl >= 0) return byUrl;
    return episodeList.findIndex((item) => item.number === episodeNumber);
  }, [episodeList, episodeId, epUrl, episodeNumber]);

  const matchedEpRef = useMemo(() => {
    if (currentEpIndex >= 0) return episodeList[currentEpIndex];
    return episodeList.find((item) => item.number === episodeNumber) || episodeList[0] || null;
  }, [currentEpIndex, episodeList, episodeNumber]);

  const effectiveEpisodeId = episodeId || matchedEpRef?.epId || "";
  const effectiveVideoId = requestedVideoId || matchedEpRef?.videoId || "";
  const effectiveWatchUrl = requestedWatchUrl || matchedEpRef?.watchUrl || "";
  const effectiveEpUrl = epUrl || matchedEpRef?.url || "";

  const prevEpRef = currentEpIndex > 0 ? episodeList[currentEpIndex - 1] : null;
  const nextEpRef = currentEpIndex >= 0 && currentEpIndex < episodeList.length - 1 ? episodeList[currentEpIndex + 1] : null;

  const navigateToEpisode = useCallback((target: DubbedEpRef | null) => {
    if (!target) return;
    const parsedTarget = parseCarateenEpisodeUrl(target.url);
    if (!savedOnExitRef.current) {
      savedOnExitRef.current = true;
      void saveProgressRef.current?.();
    }
    ctrlRef.current?.abort();
    checkCtrlRef.current?.abort();
    setSources([]);
    setScreen("picker");
    lastTimeRef.current = 0;
    lastDurationRef.current = 0;
    setResumeTime(0);
    router.replace({
      pathname: "/dubbed/watch",
      params: {
        epUrl: target.url,
        series: series || "",
        title: title || "",
        ep: String(target.number),
        season: target.seasonLabel || season || "الموسم 1",
        poster: posterUrl,
        totalEps: String(totalEpsCount || episodeList.length || ""),
        ...(isAzSource
          ? {
              provider: "az",
              showId: showId || "",
              episodeId: target.epId || "",
              watchUrl: target.watchUrl || "",
            }
          : isSd2Source || parsedTarget?.provider === "sd2"
          ? {
              provider: "sd2",
              showId: parsedTarget?.showId || showId || "",
              slug: parsedTarget?.showId || showId || "",
              episodeId: target.epId || parsedTarget?.episodeId || "",
              watchUrl: target.watchUrl || "",
              isMovie: isMovieEntry ? "1" : "0",
            }
          : isCarateenSource || parsedTarget
            ? {
                provider: parsedTarget?.provider || provider || "sp",
                showId: parsedTarget?.showId || showId || "",
                episodeId: target.epId || parsedTarget?.episodeId || "",
                ...(target.videoId ? { videoId: target.videoId } : {}),
              }
            : {}),
      },
    });
  }, [router, series, title, season, posterUrl, totalEpsCount, episodeList.length, isAzSource, isSd2Source, isCarateenSource, isMovieEntry, provider, showId]);

  /** استخراج رابط الفيديو من HTML — نفس patterns الباكند */
  function extractVideoFromHtml(html: string): string | null {
    const m1 = html.match(/(?:const\s+)?videoSrc\s*=\s*["']([^"']+(?:\.mp4|\.m3u8)[^"']*)["']/);
    if (m1) return m1[1].split('"')[0].split("'")[0];
    const m2 = html.match(/['"](https?:\/\/[^"']+\.mp4[^"']*)['"]/);
    if (m2) return m2[1];
    const m3 = html.match(/src=["']([^"']+\.m3u8[^"']*)["']/);
    if (m3) return m3[1];
    return null;
  }

  /** استخراج رابط تشغيل حلقة سبيستون / كراتين (يدعم /stream و /watch-src و video_id المباشر) */
  const resolveCarateenMedia = useCallback(async (
    signal: AbortSignal,
    mode: "api" | "direct" = "api",
  ): Promise<{ url: string; contentType: "hls" | "progressive"; rawUrl: string } | null> => {
    const BASE = getBaseUrl();
    const prov = provider || "sp";
    let targetEpId = effectiveEpisodeId;
    let targetVideoId = effectiveVideoId;

    // If episodeId is still empty (e.g. episodes list hasn't finished loading), fetch it on-demand
    if (!targetEpId && showId) {
      try {
        const epRes = await fetch(
          `${BASE}/api/dubbed/carateen/episodes?provider=${encodeURIComponent(prov)}&showId=${encodeURIComponent(showId)}&id=${encodeURIComponent(showId)}`,
          { signal },
        );
        if (epRes.ok) {
          const epData = await epRes.json();
          const rawList: any[] = Array.isArray(epData?.episodes)
            ? epData.episodes
            : Array.isArray(epData?.seasons?.[0]?.episodes)
              ? epData.seasons[0].episodes
              : [];
          const found = rawList.find((item: any, idx: number) => Number(item?.number ?? idx + 1) === episodeNumber) || rawList[0];
          if (found) {
            targetEpId = String(found.epId ?? found.id ?? "").trim();
            if (found.video_id) targetVideoId = String(found.video_id).trim();
          }
        }
      } catch {}
    }

    // 1. Try /api/dubbed/carateen/stream (Available on live server https://animenovaa.duckdns.org)
    if (targetEpId && showId) {
      try {
        const streamRes = await fetch(
          `${BASE}/api/dubbed/carateen/stream?provider=${encodeURIComponent(prov)}&showId=${encodeURIComponent(showId)}&episodeId=${encodeURIComponent(targetEpId)}`,
          { signal, cache: "no-store" },
        );
        if (streamRes.ok && (streamRes.headers.get("content-type") || "").includes("json")) {
          const d = await streamRes.json();
          const rawStreamUrl = typeof d?.streamUrl === "string" ? d.streamUrl.trim() : "";
          if (rawStreamUrl) {
            const isHls = /\.m3u8(?:[?#]|$)/i.test(rawStreamUrl) || rawStreamUrl.includes("/hls/");
            const proxied = isHls
              ? `${BASE}/api/anime/hls-proxy?url=${encodeURIComponent(rawStreamUrl)}&ref=${encodeURIComponent("https://carateen.tv/")}`
              : `${BASE}/api/anime/video-proxy?url=${encodeURIComponent(rawStreamUrl)}&ref=${encodeURIComponent("https://carateen.tv/")}`;
            const chosenUrl = mode === "direct" ? rawStreamUrl : proxied;
            return {
              url: withPlaybackTrace(chosenUrl, playbackTraceId, BASE),
              contentType: isHls ? "hls" : "progressive",
              rawUrl: proxied,
            };
          }
        }
      } catch (e: any) {
        if (e?.name === "AbortError" || signal.aborted) return null;
      }
    }

    // 2. Try /api/dubbed/carateen/watch-src (if supported by backend)
    if (targetEpId && showId) {
      try {
        const watchRes = await fetch(
          `${BASE}/api/dubbed/carateen/watch-src?provider=${encodeURIComponent(prov)}&showId=${encodeURIComponent(showId)}&episodeId=${encodeURIComponent(targetEpId)}`,
          { signal, cache: "no-store" },
        );
        if (watchRes.ok && (watchRes.headers.get("content-type") || "").includes("json")) {
          const d = await watchRes.json();
          const proxyUrl = typeof d?.hlsUrl === "string" && d.hlsUrl
            ? (d.hlsUrl.startsWith("/") ? `${BASE}${d.hlsUrl}` : d.hlsUrl)
            : null;
          if (proxyUrl) {
            return {
              url: withPlaybackTrace(proxyUrl, playbackTraceId, BASE),
              contentType: d.type === "hls" ? "hls" : "progressive",
              rawUrl: proxyUrl,
            };
          }
        }
      } catch (e: any) {
        if (e?.name === "AbortError" || signal.aborted) return null;
      }
    }

    // 3. Direct fallback using video_id from episode metadata
    if (targetVideoId) {
      const directHls = `https://pegasus.5387692.xyz/api/${prov === "sp" ? "sp" : "ct"}/hls/${encodeURIComponent(targetVideoId)}/playlist.m3u8`;
      const proxiedHls = `${BASE}/api/anime/hls-proxy?url=${encodeURIComponent(directHls)}&ref=${encodeURIComponent("https://carateen.tv/")}`;
      const chosenUrl = mode === "direct" ? directHls : proxiedHls;
      return {
        url: withPlaybackTrace(chosenUrl, playbackTraceId, BASE),
        contentType: "hls",
        rawUrl: proxiedHls,
      };
    }

    return null;
  }, [effectiveEpisodeId, effectiveVideoId, episodeNumber, playbackTraceId, provider, showId]);

  const ensureSd2WatchUrl = useCallback(async (signal: AbortSignal): Promise<string> => {
    if (effectiveWatchUrl) return effectiveWatchUrl;
    if (!showId) return "";
    const BASE = getBaseUrl();
    try {
      const epRes = await fetch(
        `${BASE}/api/dubbed/sd2/episodes?slug=${encodeURIComponent(showId)}&mediaType=${isMovieEntry ? "movie" : "series"}`,
        { signal },
      );
      if (!epRes.ok) return "";
      const epData = await epRes.json();
      const flat: any[] = [];
      for (const s of epData?.seasons || []) {
        for (const item of s?.episodes || []) flat.push(item);
      }
      const match =
        (effectiveEpisodeId ? flat.find((it) => String(it?.epId || "") === effectiveEpisodeId) : null) ||
        flat.find((it) => Number(it?.number) === episodeNumber) ||
        flat[0];
      return String(match?.watchUrl || "");
    } catch {
      return "";
    }
  }, [effectiveEpisodeId, effectiveWatchUrl, episodeNumber, isMovieEntry, showId]);

  const resolveSd2Media = useCallback(async (
    signal: AbortSignal,
    serverId?: string,
    preferMp4 = false,
  ): Promise<{ url: string; contentType: "hls" | "progressive"; rawUrl: string; serverId?: string } | null> => {
    const BASE = getBaseUrl();
    const wUrl = await ensureSd2WatchUrl(signal);
    if (!wUrl || signal.aborted) return null;
    try {
      const params = new URLSearchParams({ watchUrl: wUrl });
      if (serverId) params.set("serverId", serverId);
      if (preferMp4) params.set("preferMp4", "1");
      const res = await fetch(`${BASE}/api/dubbed/sd2/watch-src?${params}`, { signal, cache: "no-store" });
      if (signal.aborted || !res.ok) return null;
      const d = await res.json();
      const proxyUrl = typeof d?.hlsUrl === "string" && d.hlsUrl
        ? (d.hlsUrl.startsWith("/") ? `${BASE}${d.hlsUrl}` : d.hlsUrl)
        : null;
      if (!proxyUrl) return null;
      return {
        url: withPlaybackTrace(proxyUrl, playbackTraceId, BASE),
        contentType: d.type === "hls" ? "hls" : "progressive",
        rawUrl: proxyUrl,
        serverId: d.serverId ? String(d.serverId) : serverId,
      };
    } catch {
      return null;
    }
  }, [ensureSd2WatchUrl, playbackTraceId]);

  const ensureAzEpisodeId = useCallback(async (signal: AbortSignal): Promise<string> => {
    if (effectiveEpisodeId) return effectiveEpisodeId;
    if (!showId || signal.aborted) return "";
    const BASE = getBaseUrl();
    try {
      const seasonNumMatch = String(season || "").match(/(\d+)/);
      const seasonParam = seasonNumMatch ? `&season=${encodeURIComponent(seasonNumMatch[1])}` : "";
      const res = await fetch(
        `${BASE}/api/dubbed/animezid/detail?slug=${encodeURIComponent(showId)}${seasonParam}`,
        { signal },
      );
      if (!res.ok || signal.aborted) return "";
      const d = await res.json();
      const list = Array.isArray(d?.episodes) ? d.episodes : [];
      const found = list.find((item: any, idx: number) => Number(item?.number ?? idx + 1) === episodeNumber) || list[0];
      return String(found?.vid || "").trim();
    } catch {
      return "";
    }
  }, [effectiveEpisodeId, episodeNumber, season, showId]);

  const resolveAzMedia = useCallback(async (
    signal: AbortSignal,
    serverId?: string,
  ): Promise<{ url: string; contentType: "hls" | "progressive"; rawUrl: string; serverId?: string } | null> => {
    const BASE = getBaseUrl();
    const vid = await ensureAzEpisodeId(signal);
    if (!vid || signal.aborted) return null;
    try {
      const params = new URLSearchParams({ vid });
      if (serverId) params.set("sourceId", serverId);
      const res = await fetch(`${BASE}/api/dubbed/animezid/watch-src?${params}`, { signal, cache: "no-store" });
      if (signal.aborted || !res.ok) return null;
      const d = await res.json();
      const proxyUrl = typeof d?.hlsUrl === "string" && d.hlsUrl
        ? (d.hlsUrl.startsWith("/") ? `${BASE}${d.hlsUrl}` : d.hlsUrl)
        : null;
      if (!proxyUrl) return null;
      return {
        url: withPlaybackTrace(proxyUrl, playbackTraceId, BASE),
        contentType: d.type === "hls" ? "hls" : "progressive",
        rawUrl: proxyUrl,
        serverId: serverId || undefined,
      };
    } catch {
      return null;
    }
  }, [ensureAzEpisodeId, playbackTraceId]);

  /* ── Stage 1: Availability Query (مرحلة الاستعلام) ── */
  const runAvailabilityQuery = useCallback(async () => {
    checkCtrlRef.current?.abort();
    const ctrl = new AbortController();
    checkCtrlRef.current = ctrl;
    preloadedMediaRef.current = null;
    setError(null);
    setCheckingAvailability(true);

    const BASE = getBaseUrl();
    if (isAzSource) {
      const defaultAzSlots: DubbedServerSlot[] = [
        {
          key: "AZ_AUTO_1080p",
          site: "dubbed_az_1",
          shortName: "1",
          label: "السيرفر 1 · MegaMax",
          quality: "720p",
          mode: "api",
          state: "checking",
        },
        {
          key: "AZ_MEGAMAX_1080p",
          site: "dubbed_az_2",
          shortName: "2",
          label: "السيرفر 2 · Uqload",
          quality: "1080p",
          mode: "api",
          state: "checking",
        },
      ];
      setSlots(defaultAzSlots);
      try {
        const resolvedVid = await ensureAzEpisodeId(ctrl.signal);
        if (resolvedVid && !ctrl.signal.aborted) {
          const srvRes = await fetch(`${BASE}/api/dubbed/animezid/servers?vid=${encodeURIComponent(resolvedVid)}`, { signal: ctrl.signal });
          if (srvRes.ok && !ctrl.signal.aborted && mountedRef.current) {
            const srvJson = await srvRes.json();
            const list: any[] = Array.isArray(srvJson?.watchSources) ? srvJson.watchSources : [];
            const nativeFirst = list.filter((s) => s.supportsNative);
            const shown = (nativeFirst.length > 0 ? nativeFirst : list).slice(0, 4);
            if (shown.length > 0) {
              const dynamicSlots: DubbedServerSlot[] = shown.map((srv, idx) => {
                const numName = String(idx + 1);
                return {
                  key: `AZ_${srv.id}_${idx}`,
                  site: `dubbed_az_${numName}`,
                  shortName: numName,
                  label: `السيرفر ${numName} · ${srv.provider || "مباشر"}`,
                  quality: srv.quality === "1080p" ? "1080p" : "720p",
                  mode: "api",
                  state: "available",
                  serverId: String(srv.id),
                };
              });
              setSlots(dynamicSlots);
              setCheckingAvailability(false);
              const firstSrvId = dynamicSlots[0]?.serverId;
              void resolveAzMedia(ctrl.signal, firstSrvId).then((resolved) => {
                if (resolved && !ctrl.signal.aborted && mountedRef.current) {
                  preloadedMediaRef.current = resolved;
                }
              });
              return;
            }
          }
        }
      } catch (e: any) {
        if (e?.name === "AbortError" || !mountedRef.current) return;
      }
      if (!mountedRef.current || ctrl.signal.aborted) return;
      setSlots((prev) => prev.map((s) => ({ ...s, state: "available" })));
      setCheckingAvailability(false);
      return;
    }
    if (isSd2Source) {
      const defaultSd2Slots: DubbedServerSlot[] = [
        {
          key: "SD2_AUTO_1080p",
          site: "dubbed_sd2_1",
          shortName: "1",
          label: "السيرفر 1",
          quality: "1080p",
          mode: "api",
          state: "checking",
        },
        {
          key: "SD2_FALLBACK_720p",
          site: "dubbed_sd2_2",
          shortName: "2",
          label: "السيرفر 2",
          quality: "720p",
          mode: "direct",
          state: "checking",
        },
      ];
      setSlots(defaultSd2Slots);
      try {
        const wUrl = await ensureSd2WatchUrl(ctrl.signal);
        if (ctrl.signal.aborted || !mountedRef.current) return;
        if (wUrl) {
          const srvRes = await fetch(`${BASE}/api/dubbed/sd2/servers?watchUrl=${encodeURIComponent(wUrl)}`, { signal: ctrl.signal });
          if (srvRes.ok && !ctrl.signal.aborted && mountedRef.current) {
            const srvJson = await srvRes.json();
            const list: any[] = Array.isArray(srvJson?.servers) ? srvJson.servers : [];
            if (list.length > 0) {
              const dynamicSlots: DubbedServerSlot[] = list.map((srv, idx) => {
                const numName = String(idx + 1);
                return {
                  key: `SD2_${srv.id}_${idx === 0 ? "1080p" : "720p"}`,
                  site: `dubbed_sd2_${numName}`,
                  shortName: numName,
                  label: `السيرفر ${numName}`,
                  quality: srv.quality === "1080p" || idx === 0 ? "1080p" : "720p",
                  mode: "api",
                  state: "available",
                  serverId: String(srv.id),
                };
              });
              setSlots(dynamicSlots);
              setCheckingAvailability(false);
            }
          }
          setSlots((prev) => prev.map((s) => ({ ...s, state: "available" })));
          setCheckingAvailability(false);
          void resolveSd2Media(ctrl.signal).then((resolved) => {
            if (resolved && !ctrl.signal.aborted && mountedRef.current) {
              preloadedMediaRef.current = resolved;
            }
          });
          return;
        }
      } catch (e: any) {
        if (e?.name === "AbortError" || !mountedRef.current) return;
      }
      if (!mountedRef.current || ctrl.signal.aborted) return;
      setSlots((prev) => prev.map((s) => ({ ...s, state: "available" })));
      setCheckingAvailability(false);
      return;
    }

    const primaryShort = provider === "sp" ? "SP" : isCarateenSource ? "CT" : "AT";
    const initialSlots: DubbedServerSlot[] = [
      {
        key: `${primaryShort}_1080p`,
        site: `dubbed_${primaryShort.toLowerCase()}_1080`,
        shortName: primaryShort,
        label: provider === "sp" ? "سيرفر سبيستون الرئيسي FHD" : "سيرفر المدبلج الرئيسي FHD",
        quality: "1080p",
        mode: "api",
        state: "checking",
      },
      {
        key: `${primaryShort}_720p`,
        site: `dubbed_${primaryShort.toLowerCase()}_720`,
        shortName: primaryShort,
        label: provider === "sp" ? "سيرفر سبيستون السريع HD" : "سيرفر المدبلج السريع HD",
        quality: "720p",
        mode: "api",
        state: "checking",
      },
      {
        key: "DIRECT_720p",
        site: "dubbed_direct_720",
        shortName: "احتياطي",
        label: "السيرفر الاحتياطي المباشر",
        quality: "720p",
        mode: "direct",
        state: "checking",
      },
    ];
    setSlots(initialSlots);

    try {
      if (isCarateenSource) {
        const resolved = await resolveCarateenMedia(ctrl.signal, "api");
        if (resolved && !ctrl.signal.aborted && mountedRef.current) {
          preloadedMediaRef.current = resolved;
        }
      } else if (effectiveEpUrl) {
        const sourceUrl = `${BASE}/api/dubbed/watch-src?epUrl=${encodeURIComponent(effectiveEpUrl)}&trace=${encodeURIComponent(playbackTraceId)}`;
        const r = await fetch(sourceUrl, { signal: ctrl.signal, cache: "no-store" });
        if (ctrl.signal.aborted || !mountedRef.current) return;
        if (r.ok && (r.headers.get("content-type") || "").includes("json")) {
          const d = await r.json();
          const proxyUrl = typeof d.hlsUrl === "string" && d.hlsUrl
            ? (d.hlsUrl.startsWith("/") ? `${BASE}${d.hlsUrl}` : d.hlsUrl)
            : null;
          if (proxyUrl) {
            preloadedMediaRef.current = {
              url: withPlaybackTrace(proxyUrl, playbackTraceId, BASE),
              contentType: d.type === "hls" ? "hls" : "progressive",
              rawUrl: proxyUrl,
            };
          }
        }
      }
    } catch (e: any) {
      if (e?.name === "AbortError" || !mountedRef.current) return;
    }

    if (!mountedRef.current || ctrl.signal.aborted) return;
    setSlots((prev) =>
      prev.map((s) => ({
        ...s,
        state: "available",
      })),
    );
    setCheckingAvailability(false);
  }, [effectiveEpUrl, ensureAzEpisodeId, ensureSd2WatchUrl, isAzSource, isCarateenSource, isSd2Source, playbackTraceId, provider, resolveAzMedia, resolveCarateenMedia, resolveSd2Media]);

  const screenRef = useRef<"picker" | "player">("picker");
  screenRef.current = screen;
  const saveProgressRef = useRef<(() => Promise<void>) | null>(null);

  useEffect(() => {
    const historyItem = watchHistory.find(
      (h) =>
        (h.contentKey === contentKey || (h.animeId && h.animeId === numericAnimeId)) &&
        h.ep === episodeNumber,
    );
    if (historyItem?.position && historyItem.position > 0) {
      setResumeTime(Math.floor(historyItem.position));
    }
  }, [contentKey, numericAnimeId, episodeNumber]); // eslint-disable-line react-hooks/exhaustive-deps

  useEffect(() => {
    mountedRef.current = true;
    if (screenRef.current === "player") return;
    setScreen("picker");
    setSources([]);
    setSelectedSlotKey(null);
    failedSlotKeysRef.current.clear();
    void runAvailabilityQuery();
    return () => {
      mountedRef.current = false;
      ctrlRef.current?.abort();
      checkCtrlRef.current?.abort();
      if (retryTimerRef.current) {
        clearTimeout(retryTimerRef.current);
        retryTimerRef.current = null;
      }
    };
  }, [runAvailabilityQuery]);

  /* ── Stage 2: Full Extraction on Server Click (الاستخراج الكامل لحظة ضغط السيرفر) ── */
  const extractPlayableSource = useCallback(async (
    mode: "api" | "direct",
    signal: AbortSignal,
    bypassCache = false,
    serverId?: string,
    preferMp4 = false,
  ): Promise<{ url: string; contentType: "hls" | "progressive"; rawUrl: string } | null> => {
    if (isAzSource) {
      if (
        !bypassCache &&
        preloadedMediaRef.current &&
        (!serverId || !preloadedMediaRef.current.serverId || serverId === preloadedMediaRef.current.serverId)
      ) {
        return {
          url: preloadedMediaRef.current.url,
          contentType: preloadedMediaRef.current.contentType,
          rawUrl: preloadedMediaRef.current.rawUrl || preloadedMediaRef.current.url,
        };
      }
      const resolved = await resolveAzMedia(signal, serverId);
      if (resolved) {
        if (!serverId || serverId === resolved.serverId) {
          preloadedMediaRef.current = resolved;
        }
        return resolved;
      }
      return null;
    }
    if (isSd2Source) {
      if (
        !bypassCache &&
        !preferMp4 &&
        preloadedMediaRef.current &&
        (!serverId || !preloadedMediaRef.current.serverId || serverId === preloadedMediaRef.current.serverId)
      ) {
        return {
          url: preloadedMediaRef.current.url,
          contentType: preloadedMediaRef.current.contentType,
          rawUrl: preloadedMediaRef.current.rawUrl || preloadedMediaRef.current.url,
        };
      }
      const resolved = await resolveSd2Media(signal, serverId, preferMp4);
      if (resolved) {
        if (!preferMp4 && (!serverId || serverId === resolved.serverId)) {
          preloadedMediaRef.current = resolved;
        }
        return resolved;
      }
      return null;
    }

    if (!bypassCache && mode === "api" && preloadedMediaRef.current) {
      return {
        url: preloadedMediaRef.current.url,
        contentType: preloadedMediaRef.current.contentType,
        rawUrl: preloadedMediaRef.current.rawUrl || preloadedMediaRef.current.url,
      };
    }

    if (isCarateenSource) {
      const resolved = await resolveCarateenMedia(signal, mode);
      if (resolved) {
        if (mode === "api") preloadedMediaRef.current = resolved;
        return resolved;
      }
      // If direct failed, try api mode as fallback
      if (mode === "direct") {
        const fallback = await resolveCarateenMedia(signal, "api");
        if (fallback) return fallback;
      }
      return null;
    }

    const BASE = getBaseUrl();
    let targetEpUrl = effectiveEpUrl;
    if (!targetEpUrl && !isCarateenSource && !isAzSource && !isSd2Source) {
      try {
        let targetSeries = series && series !== "https:%" && !series.endsWith(":%") ? series : "";
        if (!targetSeries && title) {
          const sr = await fetch(`${BASE}/api/dubbed/search?q=${encodeURIComponent(title)}`, { signal });
          if (sr.ok) {
            const sd = await sr.json();
            const results = Array.isArray(sd?.results) ? sd.results : [];
            const matched = results.find((item: any) => item?.title === title) || results[0];
            targetSeries = matched?.seasons?.[0]?.arabicToonsId || matched?.key || "";
          }
        }
        if (targetSeries && !signal.aborted) {
          const er = await fetch(`${BASE}/api/dubbed/episodes?series=${encodeURIComponent(targetSeries)}`, { signal });
          if (er.ok) {
            const ed = await er.json();
            const eps = Array.isArray(ed?.episodes) ? ed.episodes : [];
            const found = eps.find((item: any) => Number(item?.number) === episodeNumber) || eps[0];
            if (found?.url) targetEpUrl = String(found.url);
          }
        }
      } catch {}
    }
    const fetchViaWatchSrc = async (): Promise<{ url: string; contentType: "hls" | "progressive"; rawUrl: string } | null> => {
      if (!targetEpUrl) return null;
      for (let attempt = 0; attempt < 2; attempt += 1) {
        try {
          const sourceUrl = `${BASE}/api/dubbed/watch-src?epUrl=${encodeURIComponent(targetEpUrl)}&trace=${encodeURIComponent(playbackTraceId)}`;
          const r = await fetch(sourceUrl, { signal, cache: "no-store" });
          if (signal.aborted) return null;
          if (r.ok && (r.headers.get("content-type") || "").includes("json")) {
            const d = await r.json();
            const proxyUrl = typeof d.hlsUrl === "string" && d.hlsUrl
              ? (d.hlsUrl.startsWith("/") ? `${BASE}${d.hlsUrl}` : d.hlsUrl)
              : null;
            if (proxyUrl) {
              const resolved = {
                url: withPlaybackTrace(proxyUrl, playbackTraceId, BASE),
                contentType: (d.type === "hls" ? "hls" : "progressive") as "hls" | "progressive",
                rawUrl: proxyUrl,
              };
              preloadedMediaRef.current = resolved;
              return resolved;
            }
          }
        } catch (e: any) {
          if (e?.name === "AbortError" || signal.aborted) return null;
        }
        if (attempt < 1) {
          await new Promise<void>((r) => setTimeout(r, 400));
        }
      }
      return null;
    };
    if (mode === "api" && targetEpUrl) {
      const viaApi = await fetchViaWatchSrc();
      if (viaApi) return viaApi;
    }
    if (false && mode === "api" && targetEpUrl) {
      for (let attempt = 0; attempt < 2; attempt += 1) {
        try {
          const sourceUrl = `${BASE}/api/dubbed/watch-src?epUrl=${encodeURIComponent(targetEpUrl)}&trace=${encodeURIComponent(playbackTraceId)}`;
          const r = await fetch(sourceUrl, { signal, cache: "no-store" });
          if (signal.aborted) return null;
          if (r.ok && (r.headers.get("content-type") || "").includes("json")) {
            const d = await r.json();
            const proxyUrl = typeof d.hlsUrl === "string" && d.hlsUrl
              ? (d.hlsUrl.startsWith("/") ? `${BASE}${d.hlsUrl}` : d.hlsUrl)
              : null;
            if (proxyUrl) {
              const resolved = {
                url: withPlaybackTrace(proxyUrl, playbackTraceId, BASE),
                contentType: (d.type === "hls" ? "hls" : "progressive") as "hls" | "progressive",
                rawUrl: proxyUrl,
              };
              preloadedMediaRef.current = resolved;
              return resolved;
            }
          }
        } catch (e: any) {
          if (e?.name === "AbortError" || signal.aborted) return null;
        }
        if (attempt < 1) {
          await new Promise<void>((r) => setTimeout(r, 400));
        }
      }
    }

    if (!isCarateenSource && targetEpUrl) {
      try {
        const pageR = await fetch(targetEpUrl, {
          signal,
          headers: {
            "User-Agent": "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.6367.82 Mobile Safari/537.36",
            Referer: "https://www.arabic-toons.com/",
            Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
            "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
          },
        });
        if (signal.aborted) return null;
        if (pageR.ok) {
          const html = await pageR.text();
          const videoUrl = extractVideoFromHtml(html);
          if (videoUrl) {
            const mediaHost = (() => {
              try { return new URL(videoUrl).hostname.toLowerCase(); } catch { return ""; }
            })();
            const isHls = /\.m3u8(?:[?#]|$)/i.test(videoUrl);
            const ref = "https://www.arabic-toons.com/";
            const proxyUrl = isHls
              ? `${BASE}/api/anime/hls-proxy?url=${encodeURIComponent(videoUrl)}&ref=${encodeURIComponent(ref)}`
              : mediaHost === "stream.foupix.com"
                ? `${BASE}/api/dubbed/stream?url=${encodeURIComponent(videoUrl)}`
                : `${BASE}/api/anime/video-proxy?url=${encodeURIComponent(videoUrl)}&ref=${encodeURIComponent(ref)}`;
            return {
              url: withPlaybackTrace(proxyUrl, playbackTraceId, BASE),
              contentType: isHls ? "hls" : "progressive",
              rawUrl: proxyUrl,
            };
          }
        }
      } catch {}
      if (mode === "direct") {
        const fallbackApi = await fetchViaWatchSrc();
        if (fallbackApi) return fallbackApi;
      }
    }

    return null;
  }, [effectiveEpUrl, episodeNumber, isAzSource, isCarateenSource, isSd2Source, playbackTraceId, resolveAzMedia, resolveCarateenMedia, resolveSd2Media, series, title]);

  const pickerOpenedAtRef = useRef(Date.now());
  useEffect(() => {
    if (screen === "picker") {
      pickerOpenedAtRef.current = Date.now();
    }
  }, [screen, epUrl, episodeId]);

  const handlePickSlot = useCallback(async (slot: DubbedServerSlot) => {
    if (tvMode && Date.now() - pickerOpenedAtRef.current < 750) return;
    if (slot.state === "fetching") return;
    checkCtrlRef.current?.abort();
    ctrlRef.current?.abort();
    const ctrl = new AbortController();
    ctrlRef.current = ctrl;

    failedSlotKeysRef.current.clear();
    autoRetryCountRef.current = 0;
    setSelectedSlotKey(slot.key);
    selectedSlotKeyRef.current = slot.key;
    setError(null);
    setSlots((prev) =>
      prev.map((s) => (s.key === slot.key ? { ...s, state: "fetching" } : s)),
    );

    if (!(await ensureWatchAccess())) {
      if (mountedRef.current) {
        setSlots((prev) =>
          prev.map((s) => (s.key === slot.key ? { ...s, state: "available" } : s)),
        );
      }
      return;
    }

    const extracted = await extractPlayableSource(slot.mode, ctrl.signal, false, slot.serverId, isSd2Source);
    if (ctrl.signal.aborted || !mountedRef.current) return;

    if (!extracted) {
      failedSlotKeysRef.current.add(slot.key);
      setSlots((prev) =>
        prev.map((s) => (s.key === slot.key ? { ...s, state: "failed" } : s)),
      );
      setError("تعذّر استخراج رابط الحلقة من هذا السيرفر — جرب سيرفر آخر أو أعد المحاولة");
      return;
    }

    setSlots((prev) =>
      prev.map((s) => (s.key === slot.key ? { ...s, state: "available" } : s)),
    );
    setSources([
      {
        url: extracted.url,
        contentType: extracted.contentType,
        label: slot.label,
        quality: slot.quality === "1080p" ? "1080p FHD" : "720p HD",
      },
    ]);
    setScreen("player");

    // Pre-resolve the next backup server in background so RiftPlayer fails over seamlessly if needed
    const backupSlots = slotsRef.current.filter((s) => s.key !== slot.key && s.serverId).slice(0, 2);
    if (backupSlots.length > 0) {
      void (async () => {
        for (const alt of backupSlots) {
          if (ctrl.signal.aborted || !mountedRef.current) return;
          const altRes = await extractPlayableSource(alt.mode, ctrl.signal, true, alt.serverId, isSd2Source);
          if (altRes && !ctrl.signal.aborted && mountedRef.current) {
            setSources((prev) => {
              if (prev.some((x) => x.url === altRes.url)) return prev;
              return [
                ...prev,
                {
                  url: altRes.url,
                  contentType: altRes.contentType,
                  label: alt.label,
                  quality: alt.quality === "1080p" ? "1080p FHD" : "720p HD",
                },
              ];
            });
            break;
          }
        }
      })();
    }
  }, [extractPlayableSource, ensureWatchAccess, isSd2Source]);

  const [activeEpisodeDownloads, setActiveEpisodeDownloads] = useState<ActiveDownload[]>([]);

  /* ── Sync Active & Completed Downloads ── */
  useEffect(() => {
    const sync = () => {
      const snapshot = getActiveDownloadsSnapshot();
      const epActive = snapshot.filter(
        (d) => d.animeId === numericAnimeId && d.ep === episodeNumber,
      );
      setActiveEpisodeDownloads(epActive);

      const activeBySite = new Map(epActive.map((d) => [d.site, d]));
      setDlStates((prev) => {
        const next = { ...prev };
        for (const slot of slots) {
          const activeDl = activeBySite.get(slot.site);
          if (activeDl) {
            next[slot.key] = activeDl.status === "error" ? "error" : "downloading";
          } else if (next[slot.key] === "downloading") {
            next[slot.key] = "done";
          }
        }
        return next;
      });
      setDlProgress((prev) => {
        const next = { ...prev };
        for (const slot of slots) {
          const activeDl = activeBySite.get(slot.site);
          if (activeDl) {
            next[slot.key] = Math.round(activeDl.progress * 100);
          }
        }
        return next;
      });
      getDownloads().then((list) => {
        for (const slot of slots) {
          const dlId = makeDownloadId(numericAnimeId, episodeNumber, slot.site, slot.quality);
          if (list.some((d) => d.id === dlId)) {
            setDlStates((p) => ({ ...p, [slot.key]: "done" }));
          }
        }
      }).catch(() => {});
    };
    sync();
    return subscribeActiveDownloads(sync);
  }, [slots, numericAnimeId, episodeNumber]);

  const handleDownloadSlot = useCallback(async (slot: DubbedServerSlot) => {
    const current = dlStates[slot.key] ?? "idle";
    if (current === "fetching" || current === "downloading" || current === "done") return;

    setDlStates((p) => ({ ...p, [slot.key]: "fetching" }));
    try {
      const ctrl = new AbortController();
      const extracted = await extractPlayableSource(slot.mode, ctrl.signal, false, slot.serverId, true);
      if (!extracted) {
        setDlStates((p) => ({ ...p, [slot.key]: "error" }));
        return;
      }

      const base = getBaseUrl();
      const [authToken, downloadToken] = await Promise.all([
        getAuthToken(),
        getDownloadToken(),
      ]);

      const rawMediaUrl = extracted.rawUrl || extracted.url;
      const isDirectProgressiveProxy =
        rawMediaUrl.includes("/api/dubbed/stream") ||
        rawMediaUrl.includes("/api/anime/video-proxy") ||
        extracted.url.includes("/api/dubbed/stream") ||
        extracted.url.includes("/api/anime/video-proxy");
      const downloadSite = isSd2Source || isCarateenSource ? (slot.site || "sd2") : "animewitcher";
      const downloadUrl =
        extracted.contentType === "hls" && !rawMediaUrl.includes("/api/anime/download-mp4")
          ? `${base}/api/anime/download-mp4?site=${encodeURIComponent(downloadSite)}&url=${encodeURIComponent(rawMediaUrl)}${downloadToken ? `&dlToken=${encodeURIComponent(downloadToken)}` : ""}`
          : isDirectProgressiveProxy
            ? rawMediaUrl
            : `${base}/api/anime/download-mp4?site=${encodeURIComponent(downloadSite)}&url=${encodeURIComponent(rawMediaUrl)}${downloadToken ? `&dlToken=${encodeURIComponent(downloadToken)}` : ""}`;

      setDlStates((p) => ({ ...p, [slot.key]: "downloading" }));
      setDlProgress((p) => ({ ...p, [slot.key]: 0 }));

      await startGlobalDownload({
        animeId: numericAnimeId,
        ep: episodeNumber,
        title: title || "مدبلج",
        cover: posterUrl,
        site: slot.site,
        quality: slot.quality,
        url: downloadUrl,
        authToken: authToken ?? undefined,
        downloadToken: downloadToken ?? undefined,
        hlsManifestUrl: extracted.contentType === "hls" ? rawMediaUrl : undefined,
      });
    } catch {
      setDlStates((p) => ({ ...p, [slot.key]: "error" }));
    }
  }, [dlStates, episodeNumber, extractPlayableSource, numericAnimeId, posterUrl, title]);

  const retryAfterPlaybackError = useCallback(() => {
    if (!mountedRef.current) return;
    if (selectedSlotKeyRef.current) {
      failedSlotKeysRef.current.add(selectedSlotKeyRef.current);
    }
    const nextSlot = slotsRef.current.find((s) => !failedSlotKeysRef.current.has(s.key));
    if (autoRetryCountRef.current >= 3 || (!nextSlot && autoRetryCountRef.current >= 1)) {
      setSources([]);
      setScreen("picker");
      setError("تعذّر تشغيل الحلقة على السيرفر المختار — جرب سيرفر آخر");
      return;
    }

    autoRetryCountRef.current += 1;
    ctrlRef.current?.abort();
    if (retryTimerRef.current) clearTimeout(retryTimerRef.current);
    setSources([]);
    retryTimerRef.current = setTimeout(async () => {
      retryTimerRef.current = null;
      if (!mountedRef.current) return;
      const ctrl = new AbortController();
      ctrlRef.current = ctrl;
      const candidate = nextSlot ?? slotsRef.current[0];
      if (candidate) {
        setSelectedSlotKey(candidate.key);
        selectedSlotKeyRef.current = candidate.key;
      }
      const fresh = await extractPlayableSource(
        candidate?.mode || "api",
        ctrl.signal,
        true,
        candidate?.serverId,
        isSd2Source,
      );
      if (fresh && mountedRef.current) {
        setSources([
          {
            url: fresh.url,
            contentType: fresh.contentType,
            label: candidate?.label || "مدبلج عربي عبر الخادم",
            quality: candidate?.quality === "1080p" ? "1080p FHD" : "720p HD",
          },
        ]);
      } else if (mountedRef.current) {
        setScreen("picker");
        setError("تعذّر تشغيل الحلقة — اختر سيرفر آخر");
      }
    }, 500);
  }, [extractPlayableSource, isSd2Source]);

  const saveProgress = useCallback(async () => {
    const position = lastTimeRef.current;
    if (position > 1) setResumeTime(Math.floor(position));
    if (!contentKey || position <= 2) return;
    const duration = lastDurationRef.current || undefined;
    const savedEpUrl =
      effectiveEpUrl ||
      effectiveWatchUrl ||
      (isAzSource && showId ? `carateen://az/${showId}/${effectiveEpisodeId || episodeNumber}` : "");
    await addToHistory({
      animeId: numericAnimeId,
      ep: episodeNumber,
      totalEps: totalEpsCount || undefined,
      contentKind: "dubbed",
      contentKey,
      episodeUrl: savedEpUrl,
      catalogEpisodeId: effectiveEpisodeId || undefined,
      catalogMediaType: isMovieEntry ? "movie" : "series",
      seasonLabel: season || "الموسم 1",
      title: title || "كرتون مدبلج",
      english: title || "كرتون مدبلج",
      thumbnail: posterUrl,
      position,
      duration,
      updatedAt: Date.now(),
    });
  }, [
    addToHistory, contentKey, effectiveEpUrl, effectiveEpisodeId, effectiveWatchUrl,
    episodeNumber, isAzSource, isMovieEntry, numericAnimeId, posterUrl, season,
    showId, title, totalEpsCount,
  ]);
  saveProgressRef.current = saveProgress;

  const handleBack = useCallback(() => {
    if (screen === "player") {
      if (lastTimeRef.current > 1) setResumeTime(Math.floor(lastTimeRef.current));
      void saveProgress();
      setScreen("picker");
      return;
    }
    if (!savedOnExitRef.current) {
      savedOnExitRef.current = true;
      void saveProgress();
    }
    if (router.canGoBack()) router.back();
    else router.replace("/(tabs)" as any);
  }, [router, saveProgress, screen]);

  const analyticsRef = useRef<ReturnType<typeof startMobileWatchAnalytics> | null>(null);
  useEffect(() => {
    const key = showId || series || title;
    if (!key) return;
    const tracker = startMobileWatchAnalytics({
      animeId: String(key),
      episode: episodeNumber,
      title: title || "كرتون مدبلج",
      source: provider || "dubbed",
    });
    analyticsRef.current = tracker;
    return () => {
      analyticsRef.current = null;
      tracker.stop();
    };
  }, [showId, series, title, episodeNumber, provider]);

  const onProgress = useCallback((position: number, duration: number) => {
    lastTimeRef.current = position;
    if (duration > 0) lastDurationRef.current = duration;
    analyticsRef.current?.markProgress(position);
  }, []);

  useEffect(() => () => {
    if (!savedOnExitRef.current) {
      savedOnExitRef.current = true;
      void saveProgress();
    }
  }, [saveProgress]);

  /* ── RiftPlayer Screen ── */
  if (screen === "player" && sources.length > 0) {
    return (
      <>
        <RewardedAdPrompt />
        <RiftPlayer
          key={`${effectiveEpUrl || effectiveEpisodeId || episodeNumber}-${selectedSlotKey || "default"}`}
          sources={sources}
          title={`${title || ""} · ${season || ""}`}
          episode={episodeNumber}
          initialPosition={resumeTime}
          onToggleOrientation={onToggleOrientation}
          onProgress={onProgress}
          onBack={handleBack}
          onError={retryAfterPlaybackError}
          onNextEpisode={nextEpRef ? () => navigateToEpisode(nextEpRef) : undefined}
          onPrevEpisode={prevEpRef ? () => navigateToEpisode(prevEpRef) : undefined}
        />
      </>
    );
  }

  const fhdSlots = slots.filter((s) => s.quality === "1080p");
  const hdSlots = slots.filter((s) => s.quality === "720p");

  const isLightTheme = !colors.background.startsWith("#0");

  const compactSeason = (() => {
    const raw = String(season || "").trim();
    if (!raw) return isMovieEntry ? "الفيلم" : "";
    const sMatch = raw.match(/(?:\bS|Season\s*|الموسم\s*)(\d{1,2})\b/i);
    if (sMatch) return `الموسم ${parseInt(sMatch[1], 10)}`;
    if (raw.length > 18) return isMovieEntry ? "الفيلم" : "الموسم 1";
    return raw;
  })();

  const tierGroups: Array<{ quality: "1080p" | "720p"; label: string; dotColor: string; items: DubbedServerSlot[] }> = [
    { quality: "1080p" as const, label: "1080P", dotColor: isLightTheme ? "#D97706" : "#fbbf24", items: fhdSlots },
    { quality: "720p" as const, label: "720P", dotColor: isLightTheme ? "#059669" : "#34d399", items: hdSlots },
  ].filter(g => g.items.length > 0);

  /* ── Unified Server Picker Screen (Matching app/watch.tsx) ── */
  return (
    <View style={[styles.container, { backgroundColor: colors.background }]}>
      <RewardedAdPrompt />
      {/* ── Header (Matching app/watch.tsx) ── */}
      <View style={[styles.header, { paddingTop: topPad + 6, borderBottomColor: colors.border }]}>
        <Pressable
          onPress={handleBack}
          focusable={tvMode}
          style={({ focused }) => [
            styles.headerBack,
            { backgroundColor: colors.surfaceElevated, borderColor: colors.border },
            tvMode && tvFocusStyle(focused),
          ]}
        >
          <Ionicons name="chevron-forward" size={19} color={colors.textPrimary} />
        </Pressable>

        <View style={styles.headerCenter}>
          <Text style={[styles.headerTitle, { color: colors.textPrimary }]} numberOfLines={1} ellipsizeMode="tail">
            {title}
          </Text>
          <Text style={[styles.headerSub, { color: colors.textMuted }]} numberOfLines={1} ellipsizeMode="tail">
            {compactSeason ? `${compactSeason} · ` : ""}الحلقة {episodeNumber}
          </Text>
        </View>

        <View style={styles.headerLeft}>
          <Pressable
            disabled={!prevEpRef}
            onPress={() => navigateToEpisode(prevEpRef)}
            focusable={tvMode && Boolean(prevEpRef)}
            style={({ focused }) => [
              styles.epNavBtn,
              { backgroundColor: colors.surfaceElevated, borderColor: colors.border },
              !prevEpRef && { opacity: 0.32 },
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <Ionicons name="chevron-forward" size={12} color={colors.textSecondary} />
            <Text style={[styles.epNavText, { color: colors.textSecondary }]}>السابقة</Text>
          </Pressable>

          <Pressable
            disabled={!nextEpRef}
            onPress={() => navigateToEpisode(nextEpRef)}
            focusable={tvMode && Boolean(nextEpRef)}
            style={({ focused }) => [
              styles.epNavBtn,
              { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder },
              !nextEpRef && { opacity: 0.32 },
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <Text style={[styles.epNavText, { color: colors.accent }]}>التالية</Text>
            <Ionicons name="chevron-back" size={12} color={colors.accent} />
          </Pressable>

          <Pressable
            onPress={() => void runAvailabilityQuery()}
            focusable={tvMode}
            style={({ focused }) => [
              styles.headerRefreshBtn,
              { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder },
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <Ionicons name="refresh" size={13} color={colors.accent} />
          </Pressable>
        </View>
      </View>

      <ScrollView
        focusable={false}
        contentContainerStyle={styles.pickerContent}
        showsVerticalScrollIndicator={false}
        removeClippedSubviews={false}
      >
        {/* ── Info Card (Matching app/watch.tsx) ── */}
        <View style={[styles.infoCard, { backgroundColor: colors.card, borderColor: colors.border }]}>
          <View style={styles.infoPosterWrap}>
            <View style={[styles.infoPosterGlow, { backgroundColor: colors.accentSurface }]} />
            {posterUrl ? (
              <Image
                source={{ uri: posterUrl }}
                style={[styles.posterThumb, { borderColor: colors.accentBorder }]}
                resizeMode="cover"
              />
            ) : (
              <View
                style={[
                  styles.posterThumb,
                  {
                    backgroundColor: colors.accentSurface,
                    borderColor: colors.accentBorder,
                    alignItems: "center",
                    justifyContent: "center",
                  },
                ]}
              >
                <Ionicons name="film-outline" size={24} color={colors.accent} />
              </View>
            )}
          </View>
          <View style={styles.infoMeta}>
            <Text style={[styles.infoTitle, { color: colors.textPrimary }]} numberOfLines={2}>
              {title}
            </Text>
            {compactSeason ? (
              <Text style={[styles.infoSeasonSub, { color: colors.textSecondary }]} numberOfLines={1}>
                {compactSeason}
              </Text>
            ) : null}
            <View style={styles.infoEpRow}>
              <View
                style={[
                  styles.infoEpBadge,
                  { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder },
                ]}
              >
                <Ionicons name="play-circle" size={12} color={colors.accent} />
                <Text style={[styles.infoEpText, { color: colors.accent }]}>
                  {isMovieEntry ? "الفيلم" : `الحلقة ${episodeNumber}`}
                </Text>
              </View>
            </View>
          </View>
        </View>

        {activeEpisodeDownloads.length > 0 && (
          <Pressable
            onPress={() => router.push("/(tabs)/downloads" as any)}
            style={[
              styles.dlActiveBanner,
              {
                backgroundColor: isLightTheme ? "rgba(2, 132, 199, 0.10)" : "rgba(6, 182, 212, 0.14)",
                borderColor: isLightTheme ? "rgba(2, 132, 199, 0.35)" : "rgba(6, 182, 212, 0.40)",
              },
            ]}
          >
            {activeEpisodeDownloads.map((dl) => {
              const pct = Math.max(1, Math.round(dl.progress * 100));
              const sizeText = dl.totalBytes > 0
                ? `${formatFileSize(dl.bytesWritten)} / ${formatFileSize(dl.totalBytes)}`
                : dl.bytesWritten > 0
                  ? `تم تنزيل ${formatFileSize(dl.bytesWritten)}`
                  : "جارٍ تجهيز وتحويل الحلقة...";
              return (
                <View key={dl.id} style={{ gap: 6 }}>
                  <View style={{ flexDirection: ROW_RTL, alignItems: "center", justifyContent: "space-between", gap: 8 }}>
                    <View style={{ flexDirection: ROW_RTL, alignItems: "center", gap: 6, flex: 1 }}>
                      <ActivityIndicator size={14} color={isLightTheme ? "#0284C7" : "#22d3ee"} />
                      <Text style={{ color: colors.textPrimary, fontSize: 12, fontFamily: "Cairo_800ExtraBold" }} numberOfLines={1}>
                        جاري تنزيل الحلقة {dl.ep} ({pct}%)
                      </Text>
                    </View>
                    <Text style={{ color: isLightTheme ? "#0284C7" : "#22d3ee", fontSize: 10.5, fontFamily: "Cairo_700Bold" }}>
                      {sizeText} · تنزيلاتي ←
                    </Text>
                  </View>
                  <View style={{ height: 5, borderRadius: 3, backgroundColor: colors.border, overflow: "hidden" }}>
                    <View style={{ height: 5, borderRadius: 3, width: `${pct}%` as any, backgroundColor: isLightTheme ? "#0284C7" : "#22d3ee" }} />
                  </View>
                </View>
              );
            })}
          </Pressable>
        )}

        <Text style={[styles.noticeText, { color: colors.textSecondary }]}>
          التوفر مؤشر أولي وليس تأكيداً للتشغيل. عند الاختيار يُجلب رابط الحلقة المطلوب، وتُجرّب الروابط الاحتياطية عند فشل التشغيل.
        </Text>

        {error ? (
          <View style={[styles.errorBanner, { backgroundColor: colors.destructiveSurface, borderColor: colors.destructiveBorder }]}>
            <Ionicons name="alert-circle" size={18} color={colors.destructive} />
            <Text style={[styles.errorBannerText, { color: colors.destructive }]}>{error}</Text>
          </View>
        ) : null}

        {/* ── Quality Sections (Matching app/watch.tsx) ── */}
        {tierGroups.map((group) => (
          <View key={group.quality} style={styles.qualityBlock}>
            <View style={styles.qualityHeader}>
              <Text style={[styles.qualityTitle, { color: group.dotColor }]}>{group.label}</Text>
              <View style={[styles.qualityDot, { backgroundColor: group.dotColor }]} />
            </View>
            <View
              style={[
                styles.serverListCard,
                { backgroundColor: colors.card, borderColor: colors.border },
              ]}
            >
              {group.items.map((slot, idx) => {
                const isBusy = slot.state === "fetching" || checkingAvailability;
                const isFailed = slot.state === "failed";
                return (
                  <Pressable
                    key={slot.key}
                    onPress={() => void handlePickSlot(slot)}
                    disabled={isBusy}
                    focusable={tvMode}
                    style={({ focused, pressed }) => [
                      styles.serverRow,
                      idx < group.items.length - 1 && [styles.serverRowBorder, { borderBottomColor: colors.border }],
                      tvMode && tvFocusStyle(focused),
                      pressed && { opacity: 0.75 },
                    ]}
                  >
                    <View style={styles.webRowActions}>
                      <View style={styles.playActionPill}>
                        {slot.state === "fetching" ? (
                          <ActivityIndicator size={13} color="#fff" />
                        ) : (
                          <>
                            <Ionicons name="play" size={11} color="#ffffff" />
                            <Text style={styles.playActionText}>تشغيل</Text>
                          </>
                        )}
                      </View>
                    </View>
                    <View style={styles.serverRightInfo}>
                      <Text
                        style={[
                          styles.serverRowTitle,
                          { color: isFailed ? colors.destructive : colors.textPrimary },
                        ]}
                        numberOfLines={1}
                      >
                        السيرفر {slot.shortName}
                      </Text>
                      {checkingAvailability ? (
                        <ActivityIndicator size={10} color="#10b981" />
                      ) : (
                        <View
                          style={[
                            styles.statusDot,
                            { backgroundColor: isFailed ? colors.destructive : "#34d399" },
                          ]}
                        />
                      )}
                    </View>
                  </Pressable>
                );
              })}
            </View>
          </View>
        ))}

        {/* ── Download Servers Section (سيرفرات التحميل المباشر) ── */}
        {slots.length > 0 && (
          <View
            style={[
              styles.dlSection,
              {
                backgroundColor: colors.card,
                borderColor: isLightTheme ? "rgba(2, 132, 199, 0.30)" : "rgba(6, 182, 212, 0.24)",
              },
            ]}
          >
            <View style={styles.dlSectionHeader}>
              <View style={styles.dlHeaderTitleWrap}>
                <View
                  style={[
                    styles.dlHeaderIcon,
                    {
                      backgroundColor: isLightTheme ? "rgba(2, 132, 199, 0.10)" : "rgba(6, 182, 212, 0.14)",
                      borderColor: isLightTheme ? "rgba(2, 132, 199, 0.28)" : "rgba(6, 182, 212, 0.35)",
                    },
                  ]}
                >
                  <Ionicons name="cloud-download-outline" size={18} color={isLightTheme ? "#0284C7" : "#22d3ee"} />
                </View>
                <View style={styles.dlHeaderTexts}>
                  <Text style={[styles.dlSectionTitle, { color: colors.textPrimary }]} numberOfLines={1}>
                    سيرفرات التحميل المباشر
                  </Text>
                  <Text style={[styles.dlSectionSub, { color: colors.textSecondary }]} numberOfLines={1}>
                    تحميل مباشر سريع للحلقة المدبلجة يعمل في الخلفية
                  </Text>
                </View>
              </View>
              <View
                style={[
                  styles.dlCountBadge,
                  {
                    backgroundColor: isLightTheme ? "rgba(2, 132, 199, 0.10)" : "rgba(6, 182, 212, 0.14)",
                    borderColor: isLightTheme ? "rgba(2, 132, 199, 0.28)" : "rgba(6, 182, 212, 0.30)",
                  },
                ]}
              >
                <Text style={[styles.dlCountBadgeText, { color: isLightTheme ? "#0284C7" : "#22d3ee" }]}>
                  {slots.length} سيرفر
                </Text>
              </View>
            </View>

            <View
              style={[
                styles.dlCardsContainer,
                {
                  backgroundColor: colors.surface,
                  borderColor: colors.border,
                },
              ]}
            >
              {slots.map((slot, idx) => {
                const dlState = dlStates[slot.key] ?? "idle";
                const prog = dlProgress[slot.key] ?? 0;
                const isBusy = dlState === "fetching" || dlState === "downloading";
                const qColor =
                  slot.quality === "1080p"
                    ? isLightTheme ? "#D97706" : "#fbbf24"
                    : isLightTheme ? "#059669" : "#34d399";
                return (
                  <Pressable
                    key={`dl-${slot.key}`}
                    onPress={() => void handleDownloadSlot(slot)}
                    disabled={isBusy || dlState === "done"}
                    focusable={tvMode}
                    style={({ focused, pressed }) => [
                      styles.dlRow,
                      idx < slots.length - 1 && [styles.serverRowBorder, { borderBottomColor: colors.border }],
                      tvMode && tvFocusStyle(focused),
                      pressed && { opacity: 0.78 },
                    ]}
                  >
                    <View style={styles.webRowActions}>
                      <View
                        style={[
                          styles.dlActionBtn,
                          dlState === "done" && styles.dlActionBtnDone,
                          dlState === "error" && styles.dlActionBtnError,
                        ]}
                      >
                        {isBusy ? (
                          <>
                            <ActivityIndicator size={13} color="#ffffff" />
                            <Text style={styles.dlActionBtnText}>
                              {dlState === "downloading" ? `${Math.max(1, prog)}%` : "جاري..."}
                            </Text>
                          </>
                        ) : dlState === "done" ? (
                          <>
                            <Ionicons name="checkmark-circle" size={14} color="#ffffff" />
                            <Text style={styles.dlActionBtnText}>مكتمل</Text>
                          </>
                        ) : dlState === "error" ? (
                          <>
                            <Ionicons name="refresh" size={14} color="#ffffff" />
                            <Text style={styles.dlActionBtnText}>إعادة</Text>
                          </>
                        ) : (
                          <>
                            <Ionicons name="download-outline" size={14} color="#ffffff" />
                            <Text style={styles.dlActionBtnText}>تنزيل</Text>
                          </>
                        )}
                      </View>
                    </View>

                    <View style={styles.dlRightInfo}>
                      <View
                        style={[
                          styles.dlQualityTag,
                          { borderColor: `${qColor}44`, backgroundColor: `${qColor}18` },
                        ]}
                      >
                        <Text style={[styles.dlQualityTagText, { color: qColor }]}>
                          {slot.quality.toUpperCase()}
                        </Text>
                      </View>
                      <Text
                        style={[styles.dlServerName, { color: colors.textPrimary }]}
                        numberOfLines={1}
                      >
                        السيرفر {slot.shortName}
                      </Text>
                      <View
                        style={[
                          styles.dlTagBadge,
                          {
                            backgroundColor: isLightTheme ? "rgba(2, 132, 199, 0.10)" : "rgba(6, 182, 212, 0.14)",
                            borderColor: isLightTheme ? "rgba(2, 132, 199, 0.28)" : "rgba(6, 182, 212, 0.32)",
                          },
                        ]}
                      >
                        <Text style={{ color: isLightTheme ? "#0284C7" : "#22d3ee", fontSize: 10, fontFamily: "Cairo_800ExtraBold" }}>
                          {slot.shortName}
                        </Text>
                      </View>
                    </View>
                  </Pressable>
                );
              })}
            </View>
          </View>
        )}
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1 },
  header: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    paddingHorizontal: 12,
    paddingBottom: 10,
    borderBottomWidth: 1,
    gap: 8,
  },
  headerBack: {
    width: 36,
    height: 36,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
    flexShrink: 0,
  },
  headerCenter: {
    flex: 1,
    minWidth: 0,
    alignItems: ALIGN_RIGHT,
  },
  headerTitle: {
    fontSize: 13,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
  },
  headerSub: {
    fontSize: 10,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
  },
  headerLeft: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 5,
    flexShrink: 0,
  },
  epNavBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 3,
    height: 32,
    borderRadius: 10,
    borderWidth: 1,
    paddingHorizontal: 8,
    justifyContent: "center",
  },
  epNavText: {
    fontSize: 10,
    fontFamily: "Cairo_700Bold",
  },
  headerRefreshBtn: {
    width: 32,
    height: 32,
    borderRadius: 10,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  pickerContent: {
    padding: 14,
    paddingBottom: 80,
    gap: 12,
  },
  infoCard: {
    flexDirection: ROW_RTL,
    alignItems: "flex-start",
    gap: 14,
    padding: 14,
    borderRadius: 18,
    borderWidth: 1,
  },
  infoPosterWrap: {
    width: 72,
    height: 102,
    position: "relative",
    alignItems: "center",
    justifyContent: "center",
  },
  infoPosterGlow: {
    position: "absolute",
    width: 80,
    height: 110,
    borderRadius: 20,
  },
  posterThumb: {
    width: 72,
    height: 102,
    borderRadius: 12,
    borderWidth: 1,
  },
  infoMeta: {
    flex: 1,
    minWidth: 0,
    gap: 6,
    paddingTop: 1,
    alignItems: ALIGN_RIGHT,
  },
  infoTitle: {
    fontSize: 15,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
    lineHeight: 22,
    width: "100%",
  },
  infoSeasonSub: {
    fontSize: 12,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    width: "100%",
  },
  infoEpRow: {
    flexDirection: ROW_RTL,
    gap: 8,
    flexWrap: "wrap",
  },
  infoEpBadge: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 5,
    borderRadius: 8,
    borderWidth: 1,
    paddingHorizontal: 10,
    paddingVertical: 5,
  },
  infoEpText: {
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  noticeText: {
    fontSize: 12,
    lineHeight: 20,
    fontFamily: "Cairo_400Regular",
    textAlign: "center",
  },
  errorBanner: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
    padding: 12,
    borderRadius: 12,
    borderWidth: 1,
  },
  errorBannerText: {
    flex: 1,
    fontSize: 12,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
  },
  qualityBlock: {
    gap: 8,
  },
  qualityHeader: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "flex-end",
    gap: 6,
    paddingHorizontal: 4,
  },
  qualityDot: {
    width: 7,
    height: 7,
    borderRadius: 4,
  },
  qualityTitle: {
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
  },
  serverListCard: {
    borderRadius: 14,
    borderWidth: 1,
    overflow: "hidden",
  },
  serverRow: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    minHeight: 52,
    paddingHorizontal: 12,
    paddingVertical: 10,
    gap: 8,
  },
  serverRowBorder: {
    borderBottomWidth: StyleSheet.hairlineWidth,
  },
  webRowActions: {
    flexDirection: "row",
    alignItems: "center",
    gap: 4,
    flexShrink: 0,
  },
  playActionPill: {
    flexDirection: "row",
    alignItems: "center",
    gap: 4,
    paddingHorizontal: 14,
    paddingVertical: 6,
    borderRadius: 10,
    backgroundColor: "#10b981",
  },
  playActionText: {
    color: "#ffffff",
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
  },
  serverRightInfo: {
    flex: 1,
    minWidth: 0,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "flex-end",
    gap: 8,
  },
  serverRowTitle: {
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  statusDot: {
    width: 8,
    height: 8,
    borderRadius: 4,
  },
  dlActiveBanner: {
    borderRadius: 14,
    borderWidth: 1,
    padding: 12,
    gap: 8,
  },
  dlSection: {
    marginTop: 6,
    borderRadius: 18,
    borderWidth: 1,
    padding: 14,
    gap: 10,
  },
  dlSectionHeader: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    gap: 10,
  },
  dlHeaderTitleWrap: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
    flex: 1,
    minWidth: 0,
  },
  dlHeaderIcon: {
    width: 38,
    height: 38,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
    flexShrink: 0,
  },
  dlHeaderTexts: {
    flex: 1,
    minWidth: 0,
    alignItems: ALIGN_RIGHT,
  },
  dlSectionTitle: {
    fontSize: 13.5,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
    width: "100%",
  },
  dlSectionSub: {
    fontSize: 10,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    width: "100%",
  },
  dlCountBadge: {
    paddingHorizontal: 10,
    paddingVertical: 4,
    borderRadius: 999,
    borderWidth: 1,
    flexShrink: 0,
  },
  dlCountBadgeText: {
    fontSize: 10,
    fontFamily: "Cairo_700Bold",
  },
  dlCardsContainer: {
    borderRadius: 14,
    borderWidth: 1,
    overflow: "hidden",
  },
  dlRow: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    minHeight: 54,
    paddingHorizontal: 12,
    paddingVertical: 10,
    gap: 8,
  },
  dlActionBtn: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 5,
    minWidth: 92,
    height: 36,
    paddingHorizontal: 14,
    borderRadius: 10,
    backgroundColor: "#0284c7",
    borderWidth: 1,
    borderColor: "#38bdf8",
  },
  dlActionBtnDone: {
    backgroundColor: "#059669",
    borderColor: "#34d399",
  },
  dlActionBtnError: {
    backgroundColor: "#dc2626",
    borderColor: "#f87171",
  },
  dlActionBtnText: {
    color: "#ffffff",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  dlRightInfo: {
    flex: 1,
    minWidth: 0,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "flex-end",
    gap: 8,
  },
  dlQualityTag: {
    paddingHorizontal: 8,
    paddingVertical: 2,
    borderRadius: 7,
    borderWidth: 1,
  },
  dlQualityTagText: {
    fontSize: 10,
    fontFamily: "Cairo_800ExtraBold",
  },
  dlServerName: {
    fontSize: 12.5,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
    flexShrink: 1,
  },
  dlTagBadge: {
    width: 30,
    height: 30,
    borderRadius: 9,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
    flexShrink: 0,
  },
});
