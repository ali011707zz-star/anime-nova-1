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
import { RewardedAdPrompt } from "@/components/RewardedAdPrompt";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";
import { useColors } from "@/hooks/useColors";
import { useWatchPlayerOrientation } from "@/utils/watchOrientation";
import { createPlaybackTraceId, withPlaybackTrace } from "@/utils/playbackTrace";
import { parseCarateenEpisodeUrl } from "@/utils/carateenEpisodeRef.mjs";
import {
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
}

export default function DubbedWatchScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router  = useRouter();
  const tvMode  = isTvDevice();
  const topPad  = Platform.OS === "web" ? 0 : insets.top;

  const {
    epUrl, series, title, ep, season, poster, totalEps: totalEpsParam,
    provider: providerParam, showId: showIdParam, episodeId: episodeIdParam, videoId: videoIdParam,
  } = useLocalSearchParams<{
    epUrl: string; series: string; title: string; ep: string; season: string;
    poster: string; at: string; totalEps?: string; provider?: string; showId?: string; episodeId?: string; videoId?: string;
  }>();
  const parsedEpisodeRef = parseCarateenEpisodeUrl(epUrl);
  const requestedProvider = Array.isArray(providerParam) ? providerParam[0] : providerParam;
  const requestedShowId = Array.isArray(showIdParam) ? showIdParam[0] : showIdParam;
  const requestedEpisodeId = Array.isArray(episodeIdParam) ? episodeIdParam[0] : episodeIdParam;
  const requestedVideoId = Array.isArray(videoIdParam) ? videoIdParam[0] : videoIdParam;
  const provider =
    requestedProvider === "sp" || requestedProvider === "carateen"
      ? requestedProvider
      : parsedEpisodeRef?.provider;
  const showId = requestedShowId || parsedEpisodeRef?.showId || "";
  const episodeId = requestedEpisodeId || parsedEpisodeRef?.episodeId || "";
  const isCarateenSource = provider === "sp" || provider === "carateen";
  const playbackTraceId = useMemo(() => createPlaybackTraceId(), [epUrl, episodeId]);

  const { addToHistory } = useApp();
  const [screen, setScreen] = useState<"picker" | "player">("picker");
  const [sources, setSources] = useState<PlayerSource[]>([]);
  const [selectedSlotKey, setSelectedSlotKey] = useState<string | null>(null);
  const [slots, setSlots] = useState<DubbedServerSlot[]>([]);
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
  const preloadedMediaRef = useRef<{ url: string; contentType: "hls" | "progressive"; rawUrl?: string } | null>(null);

  const onToggleOrientation = useWatchPlayerOrientation(screen === "player" && sources.length > 0, tvMode);

  const episodeNumber = Math.max(1, parseInt(ep || "1", 10) || 1);
  const totalEpsCount = Math.max(episodeList.length, parseInt(totalEpsParam || "0", 10) || 0);
  const contentKey = series || (isCarateenSource ? `carateen:${provider}:${showId}` : epUrl || "");
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
        if (isCarateenSource && provider && showId) {
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
        } else if (series && !series.startsWith("carateen:")) {
          const r = await fetch(`${BASE}/api/dubbed/episodes?id=${encodeURIComponent(series)}`);
          if (!r.ok || cancelled) return;
          const d = await r.json();
          const seasons = Array.isArray(d?.seasons) ? d.seasons : [];
          const flat: DubbedEpRef[] = [];
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
          if (!cancelled && flat.length > 0) setEpisodeList(flat);
        }
      } catch {}
    })();
    return () => { cancelled = true; };
  }, [isCarateenSource, provider, showId, series]);

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

  const prevEpRef = currentEpIndex > 0 ? episodeList[currentEpIndex - 1] : null;
  const nextEpRef = currentEpIndex >= 0 && currentEpIndex < episodeList.length - 1 ? episodeList[currentEpIndex + 1] : null;

  const navigateToEpisode = useCallback((target: DubbedEpRef | null) => {
    if (!target) return;
    const parsedTarget = parseCarateenEpisodeUrl(target.url);
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
        ...(isCarateenSource || parsedTarget
          ? {
              provider: parsedTarget?.provider || provider || "sp",
              showId: parsedTarget?.showId || showId || "",
              episodeId: target.epId || parsedTarget?.episodeId || "",
              ...(target.videoId ? { videoId: target.videoId } : {}),
            }
          : {}),
      },
    });
  }, [router, series, title, season, posterUrl, totalEpsCount, episodeList.length, isCarateenSource, provider, showId]);

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

  /* ── Stage 1: Availability Query (مرحلة الاستعلام) ── */
  const runAvailabilityQuery = useCallback(async () => {
    checkCtrlRef.current?.abort();
    const ctrl = new AbortController();
    checkCtrlRef.current = ctrl;
    preloadedMediaRef.current = null;
    setError(null);
    setCheckingAvailability(true);

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

    const BASE = getBaseUrl();
    try {
      if (isCarateenSource) {
        const resolved = await resolveCarateenMedia(ctrl.signal, "api");
        if (resolved && !ctrl.signal.aborted && mountedRef.current) {
          preloadedMediaRef.current = resolved;
        }
      } else {
        const sourceUrl = `${BASE}/api/dubbed/watch-src?epUrl=${encodeURIComponent(epUrl)}&trace=${encodeURIComponent(playbackTraceId)}`;
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
  }, [epUrl, isCarateenSource, playbackTraceId, provider, resolveCarateenMedia]);

  useEffect(() => {
    mountedRef.current = true;
    setScreen("picker");
    setSources([]);
    setSelectedSlotKey(null);
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
  ): Promise<{ url: string; contentType: "hls" | "progressive"; rawUrl: string } | null> => {
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
    if (mode === "api") {
      for (let attempt = 0; attempt < 2; attempt += 1) {
        try {
          const sourceUrl = `${BASE}/api/dubbed/watch-src?epUrl=${encodeURIComponent(epUrl)}&trace=${encodeURIComponent(playbackTraceId)}`;
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

    if (!isCarateenSource && epUrl) {
      try {
        const pageR = await fetch(epUrl, {
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
    }

    return null;
  }, [epUrl, isCarateenSource, playbackTraceId, resolveCarateenMedia]);

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

    setSelectedSlotKey(slot.key);
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

    const extracted = await extractPlayableSource(slot.mode, ctrl.signal, false);
    if (ctrl.signal.aborted || !mountedRef.current) return;

    if (!extracted) {
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
  }, [extractPlayableSource]);

  /* ── Sync Active & Completed Downloads ── */
  useEffect(() => {
    const sync = () => {
      for (const slot of slots) {
        const activeDl = getActiveSiteDownload(numericAnimeId, episodeNumber, slot.site);
        if (activeDl) {
          setDlStates((p) => ({
            ...p,
            [slot.key]: activeDl.status === "error" ? "error" : "downloading",
          }));
          setDlProgress((p) => ({ ...p, [slot.key]: Math.round(activeDl.progress * 100) }));
        }
      }
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
      const extracted = await extractPlayableSource(slot.mode, ctrl.signal, false);
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
        rawMediaUrl.includes("/api/dubbed/stream") || rawMediaUrl.includes("/api/anime/video-proxy");
      const downloadSite = isCarateenSource ? (slot.site || "sp") : "animewitcher";
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
    if (autoRetryCountRef.current >= 2) {
      setSources([]);
      setScreen("picker");
      setError("تعذّر تشغيل الحلقة بعد عدة محاولات — اختر سيرفر آخر أو أعد المحاولة");
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
      const fresh = await extractPlayableSource("api", ctrl.signal, true);
      if (fresh && mountedRef.current) {
        setSources([
          {
            url: fresh.url,
            contentType: fresh.contentType,
            label: "مدبلج عربي عبر الخادم",
            quality: "720p HD",
          },
        ]);
      } else if (mountedRef.current) {
        setScreen("picker");
        setError("تعذّر تشغيل الحلقة — اختر السيرفر مجدداً");
      }
    }, 800);
  }, [extractPlayableSource]);

  const saveProgress = useCallback(async () => {
    const position = lastTimeRef.current;
    if (position > 1) setResumeTime(Math.floor(position));
    if (!contentKey || position <= 2) return;
    const duration = lastDurationRef.current || undefined;
    await addToHistory({
      animeId: numericAnimeId,
      ep: episodeNumber,
      contentKind: "dubbed",
      contentKey,
      episodeUrl: epUrl || "",
      seasonLabel: season || "الموسم 1",
      title: title || "كرتون مدبلج",
      english: title || "كرتون مدبلج",
      thumbnail: posterUrl,
      position,
      duration,
      updatedAt: Date.now(),
    });
  }, [addToHistory, contentKey, numericAnimeId, episodeNumber, epUrl, posterUrl, season, title]);

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

  const onProgress = useCallback((position: number, duration: number) => {
    lastTimeRef.current = position;
    if (duration > 0) lastDurationRef.current = duration;
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
          key={`${epUrl || episodeId}-${selectedSlotKey || "default"}`}
          sources={sources}
          title={`${title || ""} · ${season || ""}`}
          episode={episodeNumber}
          initialPosition={resumeTime}
          totalEpisodes={totalEpsCount}
          onToggleOrientation={onToggleOrientation}
          onProgress={onProgress}
          onBack={handleBack}
          onError={retryAfterPlaybackError}
          onNextEpisode={nextEpRef ? () => navigateToEpisode(nextEpRef) : undefined}
          onPreviousEpisode={prevEpRef ? () => navigateToEpisode(prevEpRef) : undefined}
        />
      </>
    );
  }

  const fhdSlots = slots.filter((s) => s.quality === "1080p");
  const hdSlots = slots.filter((s) => s.quality === "720p");

  /* ── Unified Server Picker Screen ── */
  return (
    <View style={[styles.container, { backgroundColor: colors.background, paddingTop: topPad }]}>
      <RewardedAdPrompt />

      {/* Top Header with Refresh + Next + Previous + Title + Back */}
      <View style={styles.header}>
        <View style={styles.epNavRow}>
          <Pressable
            onPress={() => void runAvailabilityQuery()}
            focusable={tvMode}
            style={({ focused }) => [styles.refreshBtn, tvMode && tvFocusStyle(focused)]}
          >
            <Ionicons name="refresh" size={15} color="#A78BFA" />
          </Pressable>

          <Pressable
            onPress={() => navigateToEpisode(nextEpRef)}
            disabled={!nextEpRef}
            focusable={tvMode && Boolean(nextEpRef)}
            style={({ focused }) => [
              styles.epNavBtn,
              !nextEpRef && styles.epNavBtnDisabled,
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <Ionicons name="chevron-back" size={13} color={nextEpRef ? "#C4B5FD" : "rgba(255,255,255,0.2)"} />
            <Text style={[styles.epNavText, !nextEpRef && styles.epNavTextDisabled]}>التالية</Text>
          </Pressable>

          <Pressable
            onPress={() => navigateToEpisode(prevEpRef)}
            disabled={!prevEpRef}
            focusable={tvMode && Boolean(prevEpRef)}
            style={({ focused }) => [
              styles.epNavBtn,
              !prevEpRef && styles.epNavBtnDisabled,
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <Text style={[styles.epNavText, !prevEpRef && styles.epNavTextDisabled]}>السابقة</Text>
            <Ionicons name="chevron-forward" size={13} color={prevEpRef ? "#C4B5FD" : "rgba(255,255,255,0.2)"} />
          </Pressable>
        </View>

        <View style={{ flex: 1 }}>
          <Text style={[styles.headerTitle, { color: colors.textPrimary }]} numberOfLines={1}>{title}</Text>
          <Text style={[styles.headerSub, { color: colors.textSecondary }]}>
            {season ? `${season} · ` : ""}الحلقة {episodeNumber}
          </Text>
        </View>

        <Pressable
          onPress={handleBack}
          focusable={tvMode}
          style={({ focused }) => [styles.backBtn, tvMode && tvFocusStyle(focused)]}
        >
          <Ionicons name="chevron-forward" size={20} color="#fff" />
        </Pressable>
      </View>

      <ScrollView contentContainerStyle={styles.pickerContent} showsVerticalScrollIndicator={false}>
        {/* Info Banner Card */}
        <View style={styles.infoCard}>
          {posterUrl ? (
            <Image source={{ uri: posterUrl }} style={styles.posterThumb} resizeMode="cover" />
          ) : (
            <View style={[styles.posterThumb, { backgroundColor: "rgba(124,58,237,0.15)", alignItems: "center", justifyContent: "center" }]}>
              <Ionicons name="film-outline" size={24} color="#A78BFA" />
            </View>
          )}
          <View style={styles.infoTextWrap}>
            <Text style={styles.infoTitle} numberOfLines={2}>{title}</Text>
            <View style={styles.epPill}>
              <Ionicons name="play-circle" size={13} color="#C4B5FD" />
              <Text style={styles.epPillText}>الحلقة {episodeNumber}</Text>
            </View>
          </View>
        </View>

        <Text style={styles.noticeText}>
          التوفر مؤشر أولي وليس تأكيداً للتشغيل. عند الاختيار يُجلب رابط الحلقة المطلوب، وتُجرّب الروابط الاحتياطية عند فشل التشغيل.
        </Text>

        {error ? (
          <View style={styles.errorBanner}>
            <Ionicons name="alert-circle" size={18} color="#f87171" />
            <Text style={styles.errorBannerText}>{error}</Text>
          </View>
        ) : null}

        {/* 1080P Section */}
        {fhdSlots.length > 0 && (
          <View style={styles.qualityBlock}>
            <View style={styles.qualityHeader}>
              <Text style={[styles.qualityTitle, { color: "#FBBF24" }]}>1080P</Text>
              <View style={[styles.qualityDot, { backgroundColor: "#FBBF24" }]} />
            </View>
            <View style={styles.serverListCard}>
              {fhdSlots.map((slot, idx) => {
                const isBusy = slot.state === "fetching" || checkingAvailability;
                return (
                  <Pressable
                    key={slot.key}
                    onPress={() => void handlePickSlot(slot)}
                    disabled={isBusy}
                    focusable={tvMode}
                    style={({ focused }) => [
                      styles.serverRow,
                      idx > 0 && styles.serverRowBorder,
                      tvMode && tvFocusStyle(focused),
                    ]}
                  >
                    <View style={styles.playActionPill}>
                      {slot.state === "fetching" ? (
                        <ActivityIndicator size={13} color="#fff" />
                      ) : (
                        <>
                          <Text style={styles.playActionText}>تشغيل</Text>
                          <Ionicons name="play" size={11} color="#fff" />
                        </>
                      )}
                    </View>
                    <View style={styles.serverRightInfo}>
                      <Text style={styles.serverRowTitle}>السيرفر {slot.shortName}</Text>
                      {checkingAvailability ? (
                        <ActivityIndicator size={10} color="#34D399" />
                      ) : (
                        <View style={[styles.statusDot, { backgroundColor: slot.state === "failed" ? "#EF4444" : "#10B981" }]} />
                      )}
                    </View>
                  </Pressable>
                );
              })}
            </View>
          </View>
        )}

        {/* 720P Section */}
        {hdSlots.length > 0 && (
          <View style={styles.qualityBlock}>
            <View style={styles.qualityHeader}>
              <Text style={[styles.qualityTitle, { color: "#10B981" }]}>720P</Text>
              <View style={[styles.qualityDot, { backgroundColor: "#10B981" }]} />
            </View>
            <View style={styles.serverListCard}>
              {hdSlots.map((slot, idx) => {
                const isBusy = slot.state === "fetching" || checkingAvailability;
                return (
                  <Pressable
                    key={slot.key}
                    onPress={() => void handlePickSlot(slot)}
                    disabled={isBusy}
                    focusable={tvMode}
                    style={({ focused }) => [
                      styles.serverRow,
                      idx > 0 && styles.serverRowBorder,
                      tvMode && tvFocusStyle(focused),
                    ]}
                  >
                    <View style={styles.playActionPill}>
                      {slot.state === "fetching" ? (
                        <ActivityIndicator size={13} color="#fff" />
                      ) : (
                        <>
                          <Text style={styles.playActionText}>تشغيل</Text>
                          <Ionicons name="play" size={11} color="#fff" />
                        </>
                      )}
                    </View>
                    <View style={styles.serverRightInfo}>
                      <Text style={styles.serverRowTitle}>السيرفر {slot.shortName}</Text>
                      {checkingAvailability ? (
                        <ActivityIndicator size={10} color="#34D399" />
                      ) : (
                        <View style={[styles.statusDot, { backgroundColor: slot.state === "failed" ? "#EF4444" : "#10B981" }]} />
                      )}
                    </View>
                  </Pressable>
                );
              })}
            </View>
          </View>
        )}

        {/* Download Servers Section (سيرفرات التحميل المباشر) */}
        <View style={styles.dlSection}>
          <View style={styles.dlSectionHeader}>
            <View style={styles.dlHeaderBadge}>
              <Ionicons name="cloud-download" size={14} color="#38BDF8" />
              <Text style={styles.dlHeaderBadgeText}>تنزيل مباشر بالخلفية</Text>
            </View>
            <View style={styles.dlHeaderTitleRow}>
              <Text style={styles.dlSectionTitle}>سيرفرات التحميل المباشر</Text>
              <View style={styles.dlAccentBar} />
            </View>
          </View>

          <View style={styles.dlCardsContainer}>
            {slots.map((slot, idx) => {
              const dlState = dlStates[slot.key] ?? "idle";
              const prog = dlProgress[slot.key] ?? 0;
              const isBusy = dlState === "fetching" || dlState === "downloading";
              const qColor = slot.quality === "1080p" ? "#FBBF24" : "#34D399";
              return (
                <Pressable
                  key={`dl-${slot.key}`}
                  onPress={() => void handleDownloadSlot(slot)}
                  disabled={isBusy || dlState === "done"}
                  focusable={tvMode}
                  style={({ focused }) => [
                    styles.dlRow,
                    idx > 0 && styles.serverRowBorder,
                    dlState === "done" && styles.dlRowDone,
                    tvMode && tvFocusStyle(focused),
                  ]}
                >
                  <View
                    style={[
                      styles.dlActionBtn,
                      dlState === "done" && styles.dlActionBtnDone,
                      dlState === "error" && styles.dlActionBtnError,
                    ]}
                  >
                    {isBusy ? (
                      <>
                        <ActivityIndicator size={12} color="#38BDF8" />
                        <Text style={styles.dlActionBtnText}>
                          {dlState === "downloading" && prog > 0 ? `${prog}%` : "جاري..."}
                        </Text>
                      </>
                    ) : dlState === "done" ? (
                      <>
                        <Ionicons name="checkmark-circle" size={14} color="#34D399" />
                        <Text style={[styles.dlActionBtnText, { color: "#34D399" }]}>مكتمل</Text>
                      </>
                    ) : dlState === "error" ? (
                      <>
                        <Ionicons name="refresh" size={13} color="#F87171" />
                        <Text style={[styles.dlActionBtnText, { color: "#F87171" }]}>إعادة</Text>
                      </>
                    ) : (
                      <>
                        <Ionicons name="download-outline" size={14} color="#38BDF8" />
                        <Text style={styles.dlActionBtnText}>تنزيل الحلقة</Text>
                      </>
                    )}
                  </View>

                  <View style={styles.dlRightInfo}>
                    <View style={[styles.dlQualityTag, { borderColor: `${qColor}44`, backgroundColor: `${qColor}18` }]}>
                      <Text style={[styles.dlQualityTagText, { color: qColor }]}>{slot.quality.toUpperCase()}</Text>
                    </View>
                    <View style={{ alignItems: "flex-end" }}>
                      <Text style={styles.dlServerName}>سيرفر التحميل {slot.shortName}</Text>
                      <Text style={styles.dlServerSub}>
                        {dlState === "downloading"
                          ? `جاري التنزيل في الخلفية · ${prog}%`
                          : dlState === "done"
                            ? "تم حفظ الحلقة في تنزيلاتي"
                            : "MP4 مباشر · يدعم الاستكمال بالخلفية"}
                      </Text>
                    </View>
                  </View>
                </Pressable>
              );
            })}
          </View>
        </View>
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: "#08080f" },
  header: {
    flexDirection: ROW_LTR,
    alignItems: "center",
    gap: 10,
    paddingHorizontal: 14,
    paddingTop: 10,
    paddingBottom: 12,
    borderBottomWidth: 1,
    borderBottomColor: "rgba(255,255,255,0.06)",
  },
  epNavRow: {
    flexDirection: ROW_LTR,
    alignItems: "center",
    gap: 6,
  },
  refreshBtn: {
    width: 34,
    height: 34,
    borderRadius: 10,
    backgroundColor: "rgba(124,58,237,0.14)",
    borderWidth: 1,
    borderColor: "rgba(167,139,250,0.3)",
    alignItems: "center",
    justifyContent: "center",
  },
  epNavBtn: {
    flexDirection: ROW_LTR,
    alignItems: "center",
    gap: 4,
    paddingHorizontal: 10,
    height: 34,
    borderRadius: 10,
    backgroundColor: "rgba(124,58,237,0.16)",
    borderWidth: 1,
    borderColor: "rgba(167,139,250,0.32)",
  },
  epNavBtnDisabled: {
    backgroundColor: "rgba(255,255,255,0.03)",
    borderColor: "rgba(255,255,255,0.07)",
  },
  epNavText: {
    color: "#DDD6FE",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  epNavTextDisabled: {
    color: "rgba(255,255,255,0.22)",
  },
  backBtn: {
    width: 38,
    height: 38,
    borderRadius: 12,
    backgroundColor: "rgba(255,255,255,0.06)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.10)",
    alignItems: "center",
    justifyContent: "center",
  },
  headerTitle: { color: "#fff", fontSize: 14, fontFamily: "Cairo_700Bold", textAlign: "right" },
  headerSub: { color: "rgba(255,255,255,0.45)", fontSize: 11, fontFamily: "Cairo_400Regular", textAlign: "right" },
  pickerContent: {
    paddingHorizontal: 16,
    paddingTop: 16,
    paddingBottom: 42,
    gap: 16,
  },
  infoCard: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 14,
    padding: 14,
    borderRadius: 18,
    backgroundColor: "rgba(19, 20, 32, 0.95)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.08)",
  },
  posterThumb: {
    width: 72,
    height: 96,
    borderRadius: 12,
    borderWidth: 1,
    borderColor: "rgba(167,139,250,0.3)",
  },
  infoTextWrap: {
    flex: 1,
    alignItems: ALIGN_RIGHT,
    gap: 8,
  },
  infoTitle: {
    color: "#fff",
    fontSize: 16,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  epPill: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    paddingHorizontal: 12,
    paddingVertical: 5,
    borderRadius: 10,
    backgroundColor: "rgba(124,58,237,0.18)",
    borderWidth: 1,
    borderColor: "rgba(167,139,250,0.32)",
  },
  epPillText: {
    color: "#DDD6FE",
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
  },
  noticeText: {
    color: "rgba(255,255,255,0.65)",
    fontSize: 12,
    lineHeight: 20,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
  },
  errorBanner: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
    padding: 12,
    borderRadius: 12,
    backgroundColor: "rgba(239,68,68,0.12)",
    borderWidth: 1,
    borderColor: "rgba(239,68,68,0.3)",
  },
  errorBannerText: {
    flex: 1,
    color: "#FCA5A5",
    fontSize: 12,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
  },
  qualityBlock: {
    gap: 8,
  },
  qualityHeader: {
    flexDirection: ROW_LTR,
    alignItems: "center",
    justifyContent: ALIGN_RIGHT,
    gap: 6,
  },
  qualityDot: {
    width: 6,
    height: 6,
    borderRadius: 3,
  },
  qualityTitle: {
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
  },
  serverListCard: {
    borderRadius: 16,
    backgroundColor: "rgba(16, 24, 24, 0.92)",
    borderWidth: 1,
    borderColor: "rgba(16, 185, 129, 0.18)",
    overflow: "hidden",
  },
  serverRow: {
    flexDirection: ROW_LTR,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingVertical: 12,
  },
  serverRowBorder: {
    borderTopWidth: 1,
    borderTopColor: "rgba(255,255,255,0.06)",
  },
  playActionPill: {
    flexDirection: ROW_LTR,
    alignItems: "center",
    gap: 6,
    paddingHorizontal: 14,
    paddingVertical: 6,
    borderRadius: 10,
    backgroundColor: "#10B981",
  },
  playActionText: {
    color: "#fff",
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
  },
  serverRightInfo: {
    flexDirection: ROW_LTR,
    alignItems: "center",
    gap: 8,
  },
  serverRowTitle: {
    color: "#fff",
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
  },
  statusDot: {
    width: 8,
    height: 8,
    borderRadius: 4,
  },
  dlSection: {
    marginTop: 6,
    gap: 10,
  },
  dlSectionHeader: {
    flexDirection: ROW_LTR,
    alignItems: "center",
    justifyContent: "space-between",
  },
  dlHeaderTitleRow: {
    flexDirection: ROW_LTR,
    alignItems: "center",
    gap: 8,
  },
  dlAccentBar: {
    width: 4,
    height: 18,
    borderRadius: 2,
    backgroundColor: "#38BDF8",
  },
  dlSectionTitle: {
    color: "#F8FAFC",
    fontSize: 14,
    fontFamily: "Cairo_700Bold",
  },
  dlHeaderBadge: {
    flexDirection: ROW_LTR,
    alignItems: "center",
    gap: 5,
    paddingHorizontal: 10,
    paddingVertical: 4,
    borderRadius: 999,
    backgroundColor: "rgba(56, 189, 248, 0.12)",
    borderWidth: 1,
    borderColor: "rgba(56, 189, 248, 0.28)",
  },
  dlHeaderBadgeText: {
    color: "#38BDF8",
    fontSize: 10,
    fontFamily: "Cairo_700Bold",
  },
  dlCardsContainer: {
    borderRadius: 16,
    backgroundColor: "rgba(15, 23, 42, 0.9)",
    borderWidth: 1,
    borderColor: "rgba(56, 189, 248, 0.22)",
    overflow: "hidden",
  },
  dlRow: {
    flexDirection: ROW_LTR,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingVertical: 12,
  },
  dlRowDone: {
    backgroundColor: "rgba(16, 185, 129, 0.06)",
  },
  dlActionBtn: {
    flexDirection: ROW_LTR,
    alignItems: "center",
    gap: 6,
    paddingHorizontal: 12,
    paddingVertical: 7,
    borderRadius: 10,
    backgroundColor: "rgba(56, 189, 248, 0.14)",
    borderWidth: 1,
    borderColor: "rgba(56, 189, 248, 0.35)",
  },
  dlActionBtnDone: {
    backgroundColor: "rgba(16, 185, 129, 0.14)",
    borderColor: "rgba(16, 185, 129, 0.35)",
  },
  dlActionBtnError: {
    backgroundColor: "rgba(239, 68, 68, 0.14)",
    borderColor: "rgba(239, 68, 68, 0.35)",
  },
  dlActionBtnText: {
    color: "#38BDF8",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  dlRightInfo: {
    flexDirection: ROW_LTR,
    alignItems: "center",
    gap: 10,
  },
  dlQualityTag: {
    paddingHorizontal: 8,
    paddingVertical: 3,
    borderRadius: 7,
    borderWidth: 1,
  },
  dlQualityTagText: {
    fontSize: 10,
    fontFamily: "Cairo_700Bold",
  },
  dlServerName: {
    color: "#F1F5F9",
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  dlServerSub: {
    color: "rgba(255,255,255,0.48)",
    fontSize: 10,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
  },
});

