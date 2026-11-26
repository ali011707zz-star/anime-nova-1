import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
  I18nManager,
  Image,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { TvPressable, isTvDevice, tvFocusStyle, useTvMetrics } from "@/utils/tv";
import { getBaseUrl } from "@/utils/api";
import { reconcileDownloadButtonStates } from "@/utils/downloadIntegrityLogic.mjs";
import { getAuthToken, getDownloadToken } from "@/utils/secureApi";
import { resolveMediaFireDirectOnPhone } from "@/utils/directClientExtractor";
import { resolveDirectInternalMp4Download } from "@/utils/hybridStreamLogic.mjs";
import { ensureWatchAccess } from "@/utils/adPolicy";
import { getWatchContentId } from "@/context/AppContext";
import {
  getActiveSiteDownload,
  getDownloads,
  makeDownloadId,
  startGlobalDownload,
  subscribeActiveDownloads,
} from "@/utils/downloadManager";
import { DownloadMethodModal } from "@/components/DownloadMethodModal";
import {
  getDownloadMethodPref,
  isAdmAvailableOnDevice,
  isSiteStaticallyEligibleForAdm,
  launchAdmDownload,
  resolveStrictAdmUrlForClient,
  showAdmIneligibleAlert,
} from "@/utils/admDownloader";

type CatalogServer = {
  id?: number | string;
  server_key?: string;
  server_name?: string | null;
  source_host?: string | null;
  quality?: string | null;
  language?: string | null;
  availability_status?: string | null;
  health_state?: string | null;
  health_reason?: string | null;
  needs_recheck?: boolean;
  page_url?: string | null;
};

function readParam(value: string | string[] | undefined) {
  return Array.isArray(value) ? value[0] || "" : value || "";
}

function safePageUrl(value: unknown) {
  try {
    const url = new URL(String(value || "").trim());
    if (!["http:", "https:"].includes(url.protocol) || url.username || url.password) return null;
    return url.href;
  } catch {
    return null;
  }
}

export default function StardimaServersScreen() {
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const { tv: tvMode } = useTvMetrics();
  const params = useLocalSearchParams<{
    providerTitleId?: string | string[];
    episodeId?: string | string[];
    episodeNumber?: string | string[];
    seasonNumber?: string | string[];
    episodeTitle?: string | string[];
    title?: string | string[];
    mediaType?: string | string[];
    poster?: string | string[];
    episodeIndex?: string | string[];
    totalEpisodes?: string | string[];
    prevEpisodeId?: string | string[];
    prevEpisodeNumber?: string | string[];
    prevSeasonNumber?: string | string[];
    prevEpisodeTitle?: string | string[];
    prevEpisodeIndex?: string | string[];
    nextEpisodeId?: string | string[];
    nextEpisodeNumber?: string | string[];
    nextSeasonNumber?: string | string[];
    nextEpisodeTitle?: string | string[];
    nextEpisodeIndex?: string | string[];
  }>();
  const providerTitleId = readParam(params.providerTitleId);
  const episodeId = readParam(params.episodeId);
  const title = readParam(params.title) || "StarDima";
  const episodeTitle = readParam(params.episodeTitle) || "الحلقة";
  const episodeNumber = readParam(params.episodeNumber);
  const seasonNumber = readParam(params.seasonNumber);
  const poster = readParam(params.poster);
  const paramPrevEpisodeId = readParam(params.prevEpisodeId);
  const paramNextEpisodeId = readParam(params.nextEpisodeId);
  const isMovie = readParam(params.mediaType) === "movie";
  const [episodeSequence, setEpisodeSequence] = useState<Array<{
    id: number | string;
    episode_number?: number;
    season_number?: number;
    title?: string | null;
  }>>([]);

  useEffect(() => {
    if (!providerTitleId || isMovie) {
      setEpisodeSequence([]);
      return;
    }
    const controller = new AbortController();
    void fetch(
      `${getBaseUrl()}/api/source-catalog/titles/stardima_catalog/${encodeURIComponent(providerTitleId)}`,
      { signal: controller.signal },
    )
      .then(async (response) => (response.ok ? response.json() : null))
      .then((data: any) => {
        if (controller.signal.aborted) return;
        const rows = Array.isArray(data?.episodes) ? [...data.episodes] : [];
        rows.sort(
          (a, b) =>
            (Number(a.season_number) || 1) - (Number(b.season_number) || 1) ||
            (Number(a.episode_number) || 1) - (Number(b.episode_number) || 1),
        );
        setEpisodeSequence(rows);
      })
      .catch(() => {
        if (!controller.signal.aborted) setEpisodeSequence([]);
      });
    return () => controller.abort();
  }, [isMovie, providerTitleId]);

  const currentSeqIdx = useMemo(() => {
    if (!episodeSequence.length) return -1;
    if (episodeId) {
      const byId = episodeSequence.findIndex((e) => String(e.id) === episodeId);
      if (byId >= 0) return byId;
    }
    const epNumVal = Number(episodeNumber) || 1;
    const secNumVal = Number(seasonNumber) || 1;
    return episodeSequence.findIndex(
      (e) => (Number(e.season_number) || 1) === secNumVal && (Number(e.episode_number) || 1) === epNumVal,
    );
  }, [episodeSequence, episodeId, episodeNumber, seasonNumber]);

  const seqPrev = currentSeqIdx > 0 ? episodeSequence[currentSeqIdx - 1] : null;
  const seqNext = currentSeqIdx >= 0 && currentSeqIdx < episodeSequence.length - 1 ? episodeSequence[currentSeqIdx + 1] : null;
  const prevEpisodeId = paramPrevEpisodeId || (seqPrev ? String(seqPrev.id) : "");
  const nextEpisodeId = paramNextEpisodeId || (seqNext ? String(seqNext.id) : "");
  const numericEp = Math.max(1, parseInt(episodeNumber || "1", 10) || 1);
  const numericAnimeId = useMemo(
    () => getWatchContentId("dubbed", `stardima:${providerTitleId || title}`),
    [providerTitleId, title],
  );

  const episodeLabel = isMovie
    ? "الفيلم"
    : `${episodeTitle && episodeTitle !== `الحلقة ${episodeNumber}` ? `${episodeTitle} · ` : ""}الحلقة ${episodeNumber || ""}`;
  const episodeSubheading = isMovie
    ? "الفيلم"
    : `الموسم ${seasonNumber || "1"} · ${episodeLabel}`;
  const [servers, setServers] = useState<CatalogServer[]>([]);
  const [omittedServerCount, setOmittedServerCount] = useState(0);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [actionError, setActionError] = useState("");
  const [openingServerId, setOpeningServerId] = useState("");
  const [retryKey, setRetryKey] = useState(0);
  const [dlStates, setDlStates] = useState<Record<string, "idle" | "fetching" | "downloading" | "done" | "error">>({});
  const [pendingAdmServer, setPendingAdmServer] = useState<CatalogServer | null>(null);
  const [dlProgress, setDlProgress] = useState<Record<string, number>>({});
  const requestRef = useRef<AbortController | null>(null);

  const navigateAdjacentEpisode = useCallback((direction: "prev" | "next") => {
    const seqTarget = direction === "prev" ? seqPrev : seqNext;
    const targetEpisodeId = direction === "prev" ? prevEpisodeId : nextEpisodeId;
    if (!targetEpisodeId) return;
    const targetEpNum =
      (direction === "prev" ? readParam(params.prevEpisodeNumber) : readParam(params.nextEpisodeNumber)) ||
      (seqTarget ? String(Number(seqTarget.episode_number) || 1) : "");
    const targetSeasonNum =
      (direction === "prev" ? readParam(params.prevSeasonNumber) : readParam(params.nextSeasonNumber)) ||
      (seqTarget ? String(Number(seqTarget.season_number) || 1) : "");
    const targetEpTitle =
      (direction === "prev" ? readParam(params.prevEpisodeTitle) : readParam(params.nextEpisodeTitle)) ||
      (seqTarget ? (seqTarget.title || `الحلقة ${seqTarget.episode_number || 1}`) : "");
    const targetIndexNum =
      seqTarget && currentSeqIdx >= 0
        ? currentSeqIdx + (direction === "prev" ? -1 : 1)
        : Number(direction === "prev" ? readParam(params.prevEpisodeIndex) : readParam(params.nextEpisodeIndex)) || 0;

    router.replace({
      pathname: "/stardima-servers" as any,
      params: {
        providerTitleId,
        episodeId: targetEpisodeId,
        episodeNumber: targetEpNum || episodeNumber,
        seasonNumber: targetSeasonNum || seasonNumber,
        episodeTitle: targetEpTitle || `الحلقة ${targetEpNum || ""}`,
        title,
        mediaType: readParam(params.mediaType) || "series",
        poster,
        episodeIndex: String(targetIndexNum),
        totalEpisodes: String(episodeSequence.length || readParam(params.totalEpisodes) || ""),
      },
    });
  }, [currentSeqIdx, episodeNumber, episodeSequence.length, nextEpisodeId, params, poster, prevEpisodeId, providerTitleId, router, seasonNumber, seqNext, seqPrev, title]);

  const loadServers = useCallback(async (signal: AbortSignal) => {
    if (!episodeId) {
      setError("معرّف الحلقة غير موجود في الكتالوج.");
      setLoading(false);
      return;
    }
    setLoading(true);
    setError("");
    setActionError("");
    try {
      const response = await fetch(
        `${getBaseUrl()}/api/source-catalog/episodes/${encodeURIComponent(episodeId)}/servers`,
        { signal },
      );
      if (!response.ok) throw new Error("تعذر الاستعلام عن خوادم الحلقة.");
      const data = await response.json() as {
        servers?: CatalogServer[];
        omittedServerCount?: number;
      };
      if (signal.aborted) return;
      const usable = (Array.isArray(data.servers) ? data.servers : [])
        .filter((server) => /^\d+$/.test(String(server.id || "")) && Boolean(safePageUrl(server.page_url)))
        .filter((server) => String(server.health_state || "").toLowerCase() !== "source_removed");
      setServers(usable);
      setOmittedServerCount(Math.max(0, Number(data.omittedServerCount) || 0));
      if (!usable.length) {
        setError(
          Number(data.omittedServerCount) > 0
            ? "أُخفيت روابط فشل فحصها مؤخرًا. لا يوجد خادم متاح لهذه الحلقة الآن."
            : "لا توجد خوادم مسجلة لهذه الحلقة بعد.",
        );
      }
    } catch (loadError: any) {
      if (!signal.aborted) setError(loadError?.message || "تعذر الاستعلام عن خوادم الحلقة.");
    } finally {
      if (!signal.aborted) setLoading(false);
    }
  }, [episodeId]);

  useEffect(() => {
    requestRef.current?.abort();
    const controller = new AbortController();
    requestRef.current = controller;
    void loadServers(controller.signal);
    return () => controller.abort();
  }, [loadServers, retryKey]);

  /* ── Sync Active & Completed Downloads (verified against getDownloads) ── */
  useEffect(() => {
    let cancelled = false;
    const sync = () => {
      const activeStatusByKey: Record<string, string> = {};
      const allKeys: string[] = [];
      for (const server of servers) {
        const sId = String(server.id || "");
        if (!sId) continue;
        allKeys.push(sId);
        const siteKey = `stardima_${sId}`;
        const activeDl = getActiveSiteDownload(numericAnimeId, numericEp, siteKey);
        if (activeDl) {
          activeStatusByKey[sId] = activeDl.status;
          setDlProgress((p) => ({ ...p, [sId]: Math.round(activeDl.progress * 100) }));
        }
      }
      getDownloads().then((list) => {
        if (cancelled) return;
        const completedKeys = new Set<string>();
        for (const server of servers) {
          const sId = String(server.id || "");
          if (!sId) continue;
          const siteKey = `stardima_${sId}`;
          const qualityLabel = String(server.quality || "720p").trim();
          const dlId = makeDownloadId(numericAnimeId, numericEp, siteKey, qualityLabel);
          if (list.some((d) => d.id === dlId)) {
            completedKeys.add(sId);
          }
        }
        setDlStates((prev) =>
          reconcileDownloadButtonStates({
            prevStates: prev,
            activeStatusByKey,
            completedKeys,
            allKeys,
          }),
        );
      }).catch(() => {});
    };
    sync();
    const unsub = subscribeActiveDownloads(sync);
    return () => {
      cancelled = true;
      unsub();
    };
  }, [servers, numericAnimeId, numericEp]);

  const handleDownloadServer = useCallback(async (server: CatalogServer, downloadMode: "internal" | "adm" = "internal") => {
    const serverId = String(server.id || "");
    if (!serverId) return;
    const current = dlStates[serverId] ?? "idle";
    if (current === "fetching" || current === "downloading" || current === "done") return;

    setDlStates((p) => ({ ...p, [serverId]: "fetching" }));
    try {
      const base = getBaseUrl();
      const response = await fetch(
        `${base}/api/source-catalog/servers/${encodeURIComponent(serverId)}/watch`,
      );
      const data = await response.json().catch(() => ({})) as {
        playable?: boolean;
        streamUrl?: string | null;
        rawUrl?: string | null;
        mediaType?: string | null;
      };
      if (!response.ok || !data.playable || !data.streamUrl) {
        setDlStates((p) => ({ ...p, [serverId]: "error" }));
        return;
      }

      const rawStreamUrl = data.streamUrl.startsWith("/")
        ? `${base}${data.streamUrl}`
        : data.streamUrl;

      if (downloadMode === "adm") {
        const qualityLabel = String(server.quality || "720p").trim();
        const admCheck = await resolveStrictAdmUrlForClient({
          url: rawStreamUrl,
          rawUrl: data.rawUrl || data.streamUrl,
          mediaType: data.mediaType,
          site: `stardima_${serverId}`,
          apiBase: base,
        });
        setDlStates((p) => ({ ...p, [serverId]: "idle" }));
        if (admCheck.eligible && admCheck.directUrl) {
          await launchAdmDownload({
            directUrl: admCheck.directUrl,
            title,
            ep: numericEp,
            quality: qualityLabel,
            onFallbackInternal: () => {
              void handleDownloadServer(server, "internal");
            },
          });
          return;
        }
        showAdmIneligibleAlert(admCheck.messageAr, () => {
          void handleDownloadServer(server, "internal");
        });
        return;
      }

      const siteKey = `stardima_${serverId}`;
      let candidateUrl = rawStreamUrl;
      let candidateRawUrl = data.rawUrl || data.streamUrl || rawStreamUrl;
      let candidateHeaders: Record<string, string> | undefined;

      if (data.mediaType !== "hls") {
        const mfCandidate = [candidateUrl, candidateRawUrl].find(
          (u): u is string =>
            typeof u === "string" &&
            (u.includes("/api/aw-dubbed/mf-stream") ||
              /https?:\/\/(?:www\.)?mediafire\.com\/(?:file|view|download)\//i.test(u)),
        );
        if (mfCandidate) {
          const mfDirect = await resolveMediaFireDirectOnPhone(mfCandidate, base);
          if (mfDirect?.url) {
            candidateUrl = mfDirect.url;
            candidateRawUrl = mfDirect.url;
            candidateHeaders = mfDirect.headers;
          }
        }
      }

      const directMp4 = resolveDirectInternalMp4Download({
        url: candidateUrl,
        rawUrl: candidateRawUrl,
        mediaType: data.mediaType,
        site: siteKey,
        provider: "stardima",
        headers: candidateHeaders,
        baseUrl: base,
      });

      const [authToken, downloadToken] = await Promise.all([
        getAuthToken(),
        getDownloadToken(),
      ]);

      const downloadUrl = directMp4.isDirect && directMp4.url
        ? directMp4.url
        : data.mediaType === "hls" && !rawStreamUrl.includes("/api/anime/download-mp4")
          ? `${base}/api/anime/download-mp4?site=${encodeURIComponent(siteKey)}&url=${encodeURIComponent(rawStreamUrl)}${downloadToken ? `&dlToken=${encodeURIComponent(downloadToken)}` : ""}`
          : rawStreamUrl;

      const qualityLabel = String(server.quality || "720p").trim();

      setDlStates((p) => ({ ...p, [serverId]: "downloading" }));
      setDlProgress((p) => ({ ...p, [serverId]: 0 }));

      await startGlobalDownload({
        animeId: numericAnimeId,
        ep: numericEp,
        title,
        cover: poster,
        site: siteKey,
        quality: qualityLabel,
        url: downloadUrl,
        authToken: authToken ?? undefined,
        downloadToken: downloadToken ?? undefined,
        headers: directMp4.isDirect ? directMp4.headers : undefined,
        hlsManifestUrl: data.mediaType === "hls" ? rawStreamUrl : undefined,
      });
    } catch {
      setDlStates((p) => ({ ...p, [serverId]: "error" }));
    }
  }, [dlStates, numericAnimeId, numericEp, poster, title]);

  const handleDownloadServerPress = useCallback(async (server: CatalogServer) => {
    const serverId = String(server.id || "");
    const admPossible =
      isAdmAvailableOnDevice({ platformOs: Platform.OS, tvMode }) &&
      isSiteStaticallyEligibleForAdm(`stardima_${serverId}`);
    if (!admPossible) {
      void handleDownloadServer(server, "internal");
      return;
    }
    const pref = await getDownloadMethodPref();
    if (pref === "internal") {
      void handleDownloadServer(server, "internal");
    } else if (pref === "adm") {
      void handleDownloadServer(server, "adm");
    } else {
      setPendingAdmServer(server);
    }
  }, [handleDownloadServer, tvMode]);

  const qualityGroups = useMemo(() => {
    const groups = new Map<string, CatalogServer[]>();
    for (const server of servers) {
      const quality = String(server.quality || "720P").trim();
      const group = groups.get(quality) || [];
      group.push(server);
      groups.set(quality, group);
    }
    return [...groups.entries()];
  }, [servers]);

  const pickerOpenedAtRef = useRef(Date.now());
  useEffect(() => {
    pickerOpenedAtRef.current = Date.now();
  }, [episodeId, providerTitleId]);

  const chooseServer = useCallback(async (server: CatalogServer) => {
    if (tvMode && Date.now() - pickerOpenedAtRef.current < 750) return;
    const serverId = String(server.id || "");
    if (!serverId || !safePageUrl(server.page_url) || openingServerId) return;
    setOpeningServerId(serverId);
    setActionError("");
    try {
      if (!(await ensureWatchAccess())) {
        setActionError("لم يتم فتح المشاهدة. اختر الخادم والجودة ثم أعد المحاولة.");
        return;
      }
      router.push({
        pathname: "/stardima-player" as any,
        params: {
          serverId,
          serverName: String(server.server_name || server.source_host || "StarDima"),
          quality: String(server.quality || ""),
          providerTitleId,
          episodeId,
          episodeNumber: readParam(params.episodeNumber),
          seasonNumber: readParam(params.seasonNumber),
          mediaType: readParam(params.mediaType) || "series",
          poster: readParam(params.poster),
          episodeIndex: readParam(params.episodeIndex) || (currentSeqIdx >= 0 ? String(currentSeqIdx) : ""),
          totalEpisodes: readParam(params.totalEpisodes) || (episodeSequence.length ? String(episodeSequence.length) : ""),
          prevEpisodeId: prevEpisodeId,
          prevEpisodeNumber: readParam(params.prevEpisodeNumber) || (seqPrev ? String(Number(seqPrev.episode_number) || 1) : ""),
          prevSeasonNumber: readParam(params.prevSeasonNumber) || (seqPrev ? String(Number(seqPrev.season_number) || 1) : ""),
          prevEpisodeTitle: readParam(params.prevEpisodeTitle) || (seqPrev ? (seqPrev.title || `الحلقة ${seqPrev.episode_number || 1}`) : ""),
          prevEpisodeIndex: readParam(params.prevEpisodeIndex) || (currentSeqIdx > 0 ? String(currentSeqIdx - 1) : ""),
          nextEpisodeId: nextEpisodeId,
          nextEpisodeNumber: readParam(params.nextEpisodeNumber) || (seqNext ? String(Number(seqNext.episode_number) || 1) : ""),
          nextSeasonNumber: readParam(params.nextSeasonNumber) || (seqNext ? String(Number(seqNext.season_number) || 1) : ""),
          nextEpisodeTitle: readParam(params.nextEpisodeTitle) || (seqNext ? (seqNext.title || `الحلقة ${seqNext.episode_number || 1}`) : ""),
          nextEpisodeIndex: readParam(params.nextEpisodeIndex) || (seqNext && currentSeqIdx >= 0 ? String(currentSeqIdx + 1) : ""),
          title,
          episodeTitle: episodeSubheading,
        },
      });
    } catch {
      setActionError("تعذر بدء الاستعلام عن الخادم. حاول مرة أخرى.");
    } finally {
      setOpeningServerId("");
    }
  }, [currentSeqIdx, episodeId, episodeSequence.length, episodeSubheading, nextEpisodeId, openingServerId, params, prevEpisodeId, providerTitleId, router, seqNext, seqPrev, title]);

  const isLightTheme = !colors.background.startsWith("#0");

  return (
    <View style={[styles.screen, { backgroundColor: colors.background }]}>
      <View
        style={[
          styles.header,
          {
            paddingTop: Platform.OS === "web" ? 10 : insets.top + 6,
            borderBottomColor: colors.border,
          },
        ]}
      >
        <TvPressable
          onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)" as any))}
          accessibilityRole="button"
          accessibilityLabel="رجوع"
          focusable={tvMode}
          style={({ focused }) => [
            styles.back,
            { backgroundColor: colors.surfaceElevated, borderColor: colors.border },
            tvMode && focused && tvFocusStyle(true),
          ]}
        >
          <Ionicons name="chevron-forward" size={19} color={colors.textPrimary} />
        </TvPressable>

        <View style={styles.headerCenter}>
          <Text numberOfLines={1} style={[styles.heading, { color: colors.textPrimary }, tvMode && { fontSize: 19 }]}>
            {title}
          </Text>
          <Text numberOfLines={1} style={[styles.subheading, { color: colors.textMuted }, tvMode && { fontSize: 13 }]}>
            {episodeSubheading}
          </Text>
        </View>

        <View style={styles.epNavRow}>
          <TvPressable
            onPress={() => navigateAdjacentEpisode("prev")}
            disabled={!prevEpisodeId}
            focusable={tvMode && Boolean(prevEpisodeId)}
            style={({ focused }) => [
              styles.epNavBtn,
              { backgroundColor: colors.surfaceElevated, borderColor: colors.border },
              !prevEpisodeId && { opacity: 0.32 },
              tvMode && focused && tvFocusStyle(true),
            ]}
          >
            <Ionicons name="chevron-forward" size={12} color={colors.textSecondary} />
            <Text style={[styles.epNavText, { color: colors.textSecondary }]}>السابقة</Text>
          </TvPressable>

          <TvPressable
            onPress={() => navigateAdjacentEpisode("next")}
            disabled={!nextEpisodeId}
            focusable={tvMode && Boolean(nextEpisodeId)}
            style={({ focused }) => [
              styles.epNavBtn,
              { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder },
              !nextEpisodeId && { opacity: 0.32 },
              tvMode && focused && tvFocusStyle(true),
            ]}
          >
            <Text style={[styles.epNavText, { color: colors.accent }]}>التالية</Text>
            <Ionicons name="chevron-back" size={12} color={colors.accent} />
          </TvPressable>

          <TvPressable
            onPress={() => setRetryKey((v) => v + 1)}
            focusable={tvMode}
            style={({ focused }) => [
              styles.refreshBtn,
              { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder },
              tvMode && focused && tvFocusStyle(true),
            ]}
          >
            <Ionicons name="refresh" size={13} color={colors.accent} />
          </TvPressable>
        </View>
      </View>

      {loading ? (
        <View style={styles.center}>
          <ActivityIndicator size="large" color={colors.accent} />
          <Text style={[styles.message, { color: colors.textSecondary }]}>جارٍ الاستعلام عن خوادم الحلقة وجوداتها...</Text>
        </View>
      ) : error ? (
        <View style={styles.center}>
          <Ionicons name="cloud-offline-outline" size={34} color={colors.textMuted} />
          <Text style={[styles.message, { color: colors.textSecondary }]}>{error}</Text>
          <TvPressable
            onPress={() => setRetryKey((value) => value + 1)}
            accessibilityRole="button"
            accessibilityLabel="إعادة الاستعلام عن السيرفرات"
            focusable={tvMode}
            style={({ focused }) => [
              styles.action,
              { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder },
              tvMode && focused && tvFocusStyle(true),
            ]}
          >
            <Text style={[styles.actionText, { color: colors.accent }]}>إعادة الاستعلام</Text>
            <Ionicons name="refresh" size={16} color={colors.accent} />
          </TvPressable>
        </View>
      ) : (
        <ScrollView focusable={false} contentContainerStyle={[styles.content, { paddingBottom: Math.max(insets.bottom, 20) + 28 }]}>
          <View style={[styles.infoCard, { backgroundColor: colors.card, borderColor: colors.border }]}>
            <View style={styles.infoPosterWrap}>
              <View style={[styles.infoPosterGlow, { backgroundColor: colors.accentSurface }]} />
              {poster ? (
                <Image
                  source={{ uri: poster }}
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
            <View style={styles.infoTextWrap}>
              <Text style={[styles.infoTitle, { color: colors.textPrimary }]} numberOfLines={2}>{title}</Text>
              <View style={styles.infoEpRow}>
                <View
                  style={[
                    styles.epPill,
                    { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder },
                  ]}
                >
                  <Ionicons name="play-circle" size={12} color={colors.accent} />
                  <Text style={[styles.epPillText, { color: colors.accent }]}>
                    {isMovie ? "الفيلم" : `الحلقة ${numericEp}`}
                  </Text>
                </View>
              </View>
            </View>
          </View>

          <Text style={[styles.intro, { color: colors.textSecondary }, tvMode && { fontSize: 16, lineHeight: 26 }]}>
            التوفر مؤشر أولي وليس تأكيداً للتشغيل. عند الاختيار يُستخرج رابط الحلقة المباشر فوراً ويُفتح داخل المشغل.
          </Text>

          {qualityGroups.map(([quality, group]) => {
            const isFhd = /1080/i.test(quality);
            const qColor = isFhd
              ? (isLightTheme ? "#D97706" : "#fbbf24")
              : (isLightTheme ? "#059669" : "#34d399");
            return (
              <View key={quality} style={styles.qualitySection}>
                <View style={styles.qualityHeader}>
                  <Text style={[styles.qualityHeading, { color: qColor }, tvMode && { fontSize: 18 }]}>
                    {quality.toUpperCase()}
                  </Text>
                  <View style={[styles.qualityDot, { backgroundColor: qColor }]} />
                </View>

                <View
                  style={[
                    styles.serverListCard,
                    { backgroundColor: colors.card, borderColor: colors.border },
                  ]}
                >
                  {group.map((server, idx) => {
                    const serverId = String(server.id || server.server_key || "");
                    const serverName = String(server.server_name || server.source_host || (idx + 1));
                    const isOpening = openingServerId === String(server.id || "");
                    return (
                      <TvPressable
                        key={serverId || serverName}
                        onPress={() => void chooseServer(server)}
                        accessibilityRole="button"
                        accessibilityLabel={`فحص وتشغيل ${serverName} بجودة ${quality}`}
                        focusable={tvMode}
                        style={({ focused, pressed }) => [
                          styles.serverRow,
                          idx < group.length - 1 && [styles.serverRowBorder, { borderBottomColor: colors.border }],
                          { opacity: pressed || (openingServerId && !isOpening) ? 0.7 : 1 },
                          tvMode && focused && tvFocusStyle(true),
                        ]}
                      >
                        <View style={styles.playActionPill}>
                          {isOpening ? (
                            <ActivityIndicator size={13} color="#fff" />
                          ) : (
                            <>
                              <Ionicons name="play" size={11} color="#fff" />
                              <Text style={styles.playActionText}>تشغيل</Text>
                            </>
                          )}
                        </View>

                        <View style={styles.serverRightInfo}>
                          <Text
                            numberOfLines={1}
                            style={[styles.serverName, { color: colors.textPrimary }, tvMode && { fontSize: 16 }]}
                          >
                            السيرفر {serverName}
                          </Text>
                          <View style={[styles.statusDot, { backgroundColor: "#34d399" }]} />
                        </View>
                      </TvPressable>
                    );
                  })}
                </View>
              </View>
            );
          })}

          {/* Download Servers Section */}
          {servers.length > 0 && (
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
                    {servers.length} سيرفر
                  </Text>
                </View>
              </View>

              <View
                style={[
                  styles.dlCardsContainer,
                  { backgroundColor: colors.surface, borderColor: colors.border },
                ]}
              >
                {servers.map((server, idx) => {
                  const sId = String(server.id || "");
                  const serverName = String(server.server_name || server.source_host || (idx + 1));
                  const qualityLabel = String(server.quality || "720p").trim();
                  const dlState = dlStates[sId] ?? "idle";
                  const prog = dlProgress[sId] ?? 0;
                  const isBusy = dlState === "fetching" || dlState === "downloading";
                  const qColor = /1080/i.test(qualityLabel)
                    ? (isLightTheme ? "#D97706" : "#fbbf24")
                    : (isLightTheme ? "#059669" : "#34d399");

                  return (
                    <TvPressable
                      key={`dl-${sId || idx}`}
                      onPress={() => void handleDownloadServerPress(server)}
                      disabled={isBusy || dlState === "done"}
                      focusable={tvMode}
                      style={({ focused, pressed }) => [
                        styles.dlRow,
                        idx < servers.length - 1 && [styles.serverRowBorder, { borderBottomColor: colors.border }],
                        tvMode && focused && tvFocusStyle(true),
                        pressed && { opacity: 0.78 },
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
                            <ActivityIndicator size={13} color="#ffffff" />
                            <Text style={styles.dlActionBtnText}>
                              {dlState === "downloading" && prog > 0 ? `${prog}%` : "جاري..."}
                            </Text>
                          </>
                        ) : dlState === "done" ? (
                          <>
                            <Ionicons name="checkmark-circle" size={14} color="#ffffff" />
                            <Text style={styles.dlActionBtnText}>مكتمل</Text>
                          </>
                        ) : dlState === "error" ? (
                          <>
                            <Ionicons name="refresh" size={13} color="#ffffff" />
                            <Text style={styles.dlActionBtnText}>إعادة</Text>
                          </>
                        ) : (
                          <>
                            <Ionicons name="download-outline" size={14} color="#ffffff" />
                            <Text style={styles.dlActionBtnText}>تنزيل</Text>
                          </>
                        )}
                      </View>

                      <View style={styles.dlRightInfo}>
                        <View style={[styles.dlQualityTag, { borderColor: `${qColor}44`, backgroundColor: `${qColor}18` }]}>
                          <Text style={[styles.dlQualityTagText, { color: qColor }]}>{qualityLabel.toUpperCase()}</Text>
                        </View>
                        <Text style={[styles.dlServerName, { color: colors.textPrimary }]} numberOfLines={1}>
                          السيرفر {serverName}
                        </Text>
                      </View>
                    </TvPressable>
                  );
                })}
              </View>
            </View>
          )}

          {omittedServerCount > 0 ? (
            <Text style={[styles.message, { color: colors.textMuted, paddingVertical: 8 }]}>
              أُخفي {omittedServerCount} رابطًا فشل فحصه مؤخرًا.
            </Text>
          ) : null}
          {actionError ? <Text style={[styles.message, { color: colors.destructive }]}>{actionError}</Text> : null}
        </ScrollView>
      )}
      {!tvMode && (
        <DownloadMethodModal
          visible={Boolean(pendingAdmServer)}
          serverLabel={pendingAdmServer ? `السيرفر ${String(pendingAdmServer.server_name || pendingAdmServer.source_host || "")}` : undefined}
          qualityLabel={pendingAdmServer ? String(pendingAdmServer.quality || "720p").toUpperCase() : undefined}
          onClose={() => setPendingAdmServer(null)}
          onChooseInternal={() => {
            const picked = pendingAdmServer;
            setPendingAdmServer(null);
            if (picked) void handleDownloadServer(picked, "internal");
          }}
          onChooseAdm={() => {
            const picked = pendingAdmServer;
            setPendingAdmServer(null);
            if (picked) void handleDownloadServer(picked, "adm");
          }}
        />
      )}
    </View>
  );
}

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
const ALIGN_RIGHT = I18nManager.isRTL ? "flex-start" : "flex-end";

const styles = StyleSheet.create({
  screen: { flex: 1 },
  header: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
    paddingHorizontal: 12,
    paddingBottom: 10,
    borderBottomWidth: 1,
  },
  back: {
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
  heading: {
    fontFamily: "Cairo_800ExtraBold",
    fontSize: 13,
    textAlign: "right",
  },
  subheading: {
    fontFamily: "Cairo_400Regular",
    fontSize: 10,
    textAlign: "right",
  },
  epNavRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 5,
    flexShrink: 0,
  },
  epNavBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 3,
    paddingHorizontal: 8,
    height: 32,
    borderRadius: 10,
    borderWidth: 1,
    justifyContent: "center",
  },
  epNavText: {
    fontSize: 10,
    fontFamily: "Cairo_700Bold",
  },
  refreshBtn: {
    width: 32,
    height: 32,
    borderRadius: 10,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  content: { paddingHorizontal: 12, paddingTop: 10, paddingBottom: 80, gap: 8 },
  infoCard: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 11,
    padding: 10,
    borderRadius: 15,
    borderWidth: 1,
  },
  infoPosterWrap: {
    width: 56,
    height: 80,
    position: "relative",
    alignItems: "center",
    justifyContent: "center",
  },
  infoPosterGlow: {
    position: "absolute",
    width: 62,
    height: 86,
    borderRadius: 14,
  },
  posterThumb: {
    width: 56,
    height: 80,
    borderRadius: 10,
    borderWidth: 1,
  },
  infoTextWrap: {
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
  infoEpRow: {
    flexDirection: ROW_RTL,
    gap: 8,
    flexWrap: "wrap",
  },
  epPill: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 5,
    paddingHorizontal: 10,
    paddingVertical: 5,
    borderRadius: 8,
    borderWidth: 1,
  },
  epPillText: {
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  intro: {
    fontFamily: "Cairo_400Regular",
    fontSize: 10.5,
    lineHeight: 16,
    textAlign: "center",
  },
  qualitySection: { gap: 8 },
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
  qualityHeading: {
    fontFamily: "Cairo_700Bold",
    fontSize: 13,
    textAlign: "right",
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
    minHeight: 48,
    paddingHorizontal: 12,
    paddingVertical: 8,
    gap: 8,
  },
  serverRowBorder: {
    borderBottomWidth: StyleSheet.hairlineWidth,
  },
  playActionPill: {
    flexDirection: "row",
    alignItems: "center",
    gap: 4,
    paddingHorizontal: 11,
    paddingVertical: 5,
    borderRadius: 9,
    backgroundColor: "#10b981",
    flexShrink: 0,
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
  serverName: {
    fontFamily: "Cairo_700Bold",
    fontSize: 13,
    textAlign: "right",
  },
  statusDot: {
    width: 8,
    height: 8,
    borderRadius: 4,
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
  center: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
    gap: 12,
    padding: 24,
  },
  message: {
    fontFamily: "Cairo_400Regular",
    fontSize: 13,
    textAlign: "center",
    lineHeight: 22,
  },
  action: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
    paddingHorizontal: 16,
    paddingVertical: 11,
    borderRadius: 12,
    borderWidth: 1,
  },
  actionText: {
    fontFamily: "Cairo_700Bold",
    fontSize: 13,
  },
});
