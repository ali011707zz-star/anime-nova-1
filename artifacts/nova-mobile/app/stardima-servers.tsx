import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
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
import { TvPressable, isTvDevice, tvFocusStyle } from "@/utils/tv";
import { getBaseUrl } from "@/utils/api";
import { getAuthToken, getDownloadToken } from "@/utils/secureApi";
import { ensureWatchAccess } from "@/utils/adPolicy";
import { getWatchContentId } from "@/context/AppContext";
import {
  getActiveSiteDownload,
  getDownloads,
  makeDownloadId,
  startGlobalDownload,
  subscribeActiveDownloads,
} from "@/utils/downloadManager";

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
  const tvMode = isTvDevice();
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
  const prevEpisodeId = readParam(params.prevEpisodeId);
  const nextEpisodeId = readParam(params.nextEpisodeId);
  const isMovie = readParam(params.mediaType) === "movie";
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
  const [dlProgress, setDlProgress] = useState<Record<string, number>>({});
  const requestRef = useRef<AbortController | null>(null);

  const navigateAdjacentEpisode = useCallback((direction: "prev" | "next") => {
    const targetEpisodeId = direction === "prev" ? prevEpisodeId : nextEpisodeId;
    if (!targetEpisodeId) return;
    const targetEpNum = direction === "prev" ? readParam(params.prevEpisodeNumber) : readParam(params.nextEpisodeNumber);
    const targetSeasonNum = direction === "prev" ? readParam(params.prevSeasonNumber) : readParam(params.nextSeasonNumber);
    const targetEpTitle = direction === "prev" ? readParam(params.prevEpisodeTitle) : readParam(params.nextEpisodeTitle);
    const targetEpIndex = direction === "prev" ? readParam(params.prevEpisodeIndex) : readParam(params.nextEpisodeIndex);

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
        episodeIndex: targetEpIndex,
        totalEpisodes: readParam(params.totalEpisodes),
      },
    });
  }, [episodeNumber, nextEpisodeId, params, poster, prevEpisodeId, providerTitleId, router, seasonNumber, title]);

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

  /* ── Sync Active & Completed Downloads ── */
  useEffect(() => {
    const sync = () => {
      for (const server of servers) {
        const sId = String(server.id || "");
        if (!sId) continue;
        const siteKey = `stardima_${sId}`;
        const activeDl = getActiveSiteDownload(numericAnimeId, numericEp, siteKey);
        if (activeDl) {
          setDlStates((p) => ({
            ...p,
            [sId]: activeDl.status === "error" ? "error" : "downloading",
          }));
          setDlProgress((p) => ({ ...p, [sId]: Math.round(activeDl.progress * 100) }));
        }
      }
      getDownloads().then((list) => {
        for (const server of servers) {
          const sId = String(server.id || "");
          if (!sId) continue;
          const siteKey = `stardima_${sId}`;
          const qualityLabel = String(server.quality || "720p").trim();
          const dlId = makeDownloadId(numericAnimeId, numericEp, siteKey, qualityLabel);
          if (list.some((d) => d.id === dlId)) {
            setDlStates((p) => ({ ...p, [sId]: "done" }));
          }
        }
      }).catch(() => {});
    };
    sync();
    return subscribeActiveDownloads(sync);
  }, [servers, numericAnimeId, numericEp]);

  const handleDownloadServer = useCallback(async (server: CatalogServer) => {
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
        mediaType?: string | null;
      };
      if (!response.ok || !data.playable || !data.streamUrl) {
        setDlStates((p) => ({ ...p, [serverId]: "error" }));
        return;
      }

      const rawStreamUrl = data.streamUrl.startsWith("/")
        ? `${base}${data.streamUrl}`
        : data.streamUrl;

      const [authToken, downloadToken] = await Promise.all([
        getAuthToken(),
        getDownloadToken(),
      ]);

      const downloadUrl = data.mediaType === "hls" && !rawStreamUrl.includes("/api/anime/download-mp4")
        ? `${base}/api/anime/download-mp4?url=${encodeURIComponent(rawStreamUrl)}${downloadToken ? `&dlToken=${encodeURIComponent(downloadToken)}` : ""}`
        : rawStreamUrl;

      const siteKey = `stardima_${serverId}`;
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
      });
    } catch {
      setDlStates((p) => ({ ...p, [serverId]: "error" }));
    }
  }, [dlStates, numericAnimeId, numericEp, poster, title]);

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

  const chooseServer = useCallback(async (server: CatalogServer) => {
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
          episodeIndex: readParam(params.episodeIndex),
          totalEpisodes: readParam(params.totalEpisodes),
          prevEpisodeId: readParam(params.prevEpisodeId),
          prevEpisodeNumber: readParam(params.prevEpisodeNumber),
          prevSeasonNumber: readParam(params.prevSeasonNumber),
          prevEpisodeTitle: readParam(params.prevEpisodeTitle),
          prevEpisodeIndex: readParam(params.prevEpisodeIndex),
          nextEpisodeId: readParam(params.nextEpisodeId),
          nextEpisodeNumber: readParam(params.nextEpisodeNumber),
          nextSeasonNumber: readParam(params.nextSeasonNumber),
          nextEpisodeTitle: readParam(params.nextEpisodeTitle),
          nextEpisodeIndex: readParam(params.nextEpisodeIndex),
          title,
          episodeTitle: episodeSubheading,
        },
      });
    } catch {
      setActionError("تعذر بدء الاستعلام عن الخادم. حاول مرة أخرى.");
    } finally {
      setOpeningServerId("");
    }
  }, [episodeId, episodeSubheading, openingServerId, params, providerTitleId, router, title]);

  return (
    <View style={[styles.screen, { backgroundColor: colors.background }]}>
      <View style={[styles.header, { paddingTop: Platform.OS === "web" ? 10 : insets.top + 8 }]}>
        <View style={styles.epNavRow}>
          <TvPressable
            onPress={() => setRetryKey((v) => v + 1)}
            focusable={tvMode}
            style={({ focused }) => [styles.refreshBtn, tvMode && focused && tvFocusStyle(true)]}
          >
            <Ionicons name="refresh" size={15} color="#A78BFA" />
          </TvPressable>

          <TvPressable
            onPress={() => navigateAdjacentEpisode("next")}
            disabled={!nextEpisodeId}
            focusable={tvMode && Boolean(nextEpisodeId)}
            style={({ focused }) => [
              styles.epNavBtn,
              !nextEpisodeId && styles.epNavBtnDisabled,
              tvMode && focused && tvFocusStyle(true),
            ]}
          >
            <Ionicons name="chevron-back" size={13} color={nextEpisodeId ? "#C4B5FD" : "rgba(255,255,255,0.2)"} />
            <Text style={[styles.epNavText, !nextEpisodeId && styles.epNavTextDisabled]}>التالية</Text>
          </TvPressable>

          <TvPressable
            onPress={() => navigateAdjacentEpisode("prev")}
            disabled={!prevEpisodeId}
            focusable={tvMode && Boolean(prevEpisodeId)}
            style={({ focused }) => [
              styles.epNavBtn,
              !prevEpisodeId && styles.epNavBtnDisabled,
              tvMode && focused && tvFocusStyle(true),
            ]}
          >
            <Text style={[styles.epNavText, !prevEpisodeId && styles.epNavTextDisabled]}>السابقة</Text>
            <Ionicons name="chevron-forward" size={13} color={prevEpisodeId ? "#C4B5FD" : "rgba(255,255,255,0.2)"} />
          </TvPressable>
        </View>

        <View style={{ flex: 1 }}>
          <Text numberOfLines={1} style={[styles.heading, tvMode && { fontSize: 20 }]}>
            {title}
          </Text>
          <Text numberOfLines={1} style={[styles.subheading, tvMode && { fontSize: 13 }]}>
            {episodeSubheading}
          </Text>
        </View>

        <TvPressable
          onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)/browse" as any)}
          accessibilityRole="button"
          accessibilityLabel="رجوع إلى الحلقات"
          focusable={tvMode}
          style={({ focused }) => [styles.back, tvMode && focused && tvFocusStyle(true)]}
        >
          <Ionicons name="chevron-forward" size={20} color="#fff" />
        </TvPressable>
      </View>

      {loading ? (
        <View style={styles.center}>
          <ActivityIndicator size="large" color={colors.accent} />
          <Text style={styles.message}>جارٍ الاستعلام عن خوادم الحلقة وجوداتها...</Text>
        </View>
      ) : error ? (
        <View style={styles.center}>
          <Ionicons name="cloud-offline-outline" size={34} color={colors.textMuted} />
          <Text style={styles.message}>{error}</Text>
          <TvPressable
            onPress={() => setRetryKey((value) => value + 1)}
            accessibilityRole="button"
            accessibilityLabel="إعادة الاستعلام عن السيرفرات"
            focusable={tvMode}
            style={({ focused }) => [styles.action, tvMode && focused && tvFocusStyle(true)]}
          >
            <Text style={styles.actionText}>إعادة الاستعلام</Text>
            <Ionicons name="refresh" size={16} color={colors.accent} />
          </TvPressable>
        </View>
      ) : (
        <ScrollView contentContainerStyle={[styles.content, { paddingBottom: Math.max(insets.bottom, 20) + 28 }]}>
          <View style={styles.infoCard}>
            {poster ? (
              <Image source={{ uri: poster }} style={styles.posterThumb} resizeMode="cover" />
            ) : (
              <View style={[styles.posterThumb, { backgroundColor: "rgba(124,58,237,0.15)", alignItems: "center", justifyContent: "center" }]}>
                <Ionicons name="film-outline" size={24} color="#A78BFA" />
              </View>
            )}
            <View style={styles.infoTextWrap}>
              <Text style={styles.infoTitle} numberOfLines={2}>{title}</Text>
              <View style={styles.epPill}>
                <Ionicons name="play-circle" size={13} color="#C4B5FD" />
                <Text style={styles.epPillText}>{isMovie ? "الفيلم" : `الحلقة ${numericEp}`}</Text>
              </View>
            </View>
          </View>

          <Text style={[styles.intro, tvMode && { fontSize: 16, lineHeight: 26 }]}>
            التوفر مؤشر أولي وليس تأكيداً للتشغيل. عند الاختيار يُستخرج رابط الحلقة المباشر فوراً ويُفتح داخل المشغل.
          </Text>

          {qualityGroups.map(([quality, group]) => {
            const isFhd = /1080/i.test(quality);
            const qColor = isFhd ? "#FBBF24" : "#10B981";
            return (
              <View key={quality} style={styles.qualitySection}>
                <View style={styles.qualityHeader}>
                  <Text style={[styles.qualityHeading, { color: qColor }, tvMode && { fontSize: 18 }]}>
                    {quality.toUpperCase()}
                  </Text>
                  <View style={[styles.qualityDot, { backgroundColor: qColor }]} />
                </View>
                <View style={styles.serverListCard}>
                  {group.map((server, idx) => {
                    const serverId = String(server.id || server.server_key || "");
                    const serverName = String(server.server_name || server.source_host || "StarDima");
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
                          idx > 0 && styles.serverRowBorder,
                          { opacity: pressed || (openingServerId && !isOpening) ? 0.7 : 1 },
                          tvMode && focused && tvFocusStyle(true),
                        ]}
                      >
                        <View style={styles.playActionPill}>
                          {isOpening ? (
                            <ActivityIndicator size={13} color="#fff" />
                          ) : (
                            <>
                              <Text style={styles.playActionText}>تشغيل</Text>
                              <Ionicons name="play" size={11} color="#fff" />
                            </>
                          )}
                        </View>
                        <View style={styles.serverRightInfo}>
                          <Text numberOfLines={1} style={[styles.serverName, tvMode && { fontSize: 16 }]}>
                            السيرفر {serverName}
                          </Text>
                          <View style={[styles.statusDot, { backgroundColor: "#10B981" }]} />
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
                {servers.map((server, idx) => {
                  const sId = String(server.id || "");
                  const serverName = String(server.server_name || server.source_host || "StarDima");
                  const qualityLabel = String(server.quality || "720p").trim();
                  const dlState = dlStates[sId] ?? "idle";
                  const prog = dlProgress[sId] ?? 0;
                  const isBusy = dlState === "fetching" || dlState === "downloading";
                  const qColor = /1080/i.test(qualityLabel) ? "#FBBF24" : "#34D399";
                  return (
                    <TvPressable
                      key={`dl-${sId || idx}`}
                      onPress={() => void handleDownloadServer(server)}
                      disabled={isBusy || dlState === "done"}
                      focusable={tvMode}
                      style={({ focused }) => [
                        styles.dlRow,
                        idx > 0 && styles.serverRowBorder,
                        dlState === "done" && styles.dlRowDone,
                        tvMode && focused && tvFocusStyle(true),
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
                          <Text style={[styles.dlQualityTagText, { color: qColor }]}>{qualityLabel.toUpperCase()}</Text>
                        </View>
                        <View style={{ alignItems: "flex-end" }}>
                          <Text style={styles.dlServerName}>سيرفر التحميل {serverName}</Text>
                          <Text style={styles.dlServerSub}>
                            {dlState === "downloading"
                              ? `جاري التنزيل في الخلفية · ${prog}%`
                              : dlState === "done"
                                ? "تم حفظ الحلقة في تنزيلاتي"
                                : "MP4 مباشر · يدعم الاستكمال بالخلفية"}
                          </Text>
                        </View>
                      </View>
                    </TvPressable>
                  );
                })}
              </View>
            </View>
          )}

          {omittedServerCount > 0 ? (
            <Text style={[styles.message, { paddingVertical: 8 }]}>
              أُخفي {omittedServerCount} رابطًا فشل فحصه مؤخرًا.
            </Text>
          ) : null}
          {actionError ? <Text style={[styles.message, { color: colors.destructive }]}>{actionError}</Text> : null}
        </ScrollView>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  screen: { flex: 1, backgroundColor: "#08080f" },
  header: {
    flexDirection: "row",
    direction: "ltr",
    alignItems: "center",
    gap: 10,
    paddingHorizontal: 14,
    paddingBottom: 12,
    borderBottomWidth: 1,
    borderBottomColor: "rgba(255,255,255,0.06)",
  },
  epNavRow: {
    flexDirection: "row",
    direction: "ltr",
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
    flexDirection: "row",
    direction: "ltr",
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
  back: {
    width: 38,
    height: 38,
    borderRadius: 12,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: "rgba(255,255,255,0.06)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.10)",
  },
  heading: {
    color: "#fff",
    fontFamily: "Cairo_700Bold",
    fontSize: 14,
    textAlign: "right",
  },
  subheading: {
    color: "rgba(255,255,255,0.45)",
    fontFamily: "Cairo_400Regular",
    fontSize: 11,
    textAlign: "right",
  },
  content: { padding: 16, gap: 16 },
  infoCard: {
    flexDirection: "row-reverse",
    direction: "ltr",
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
    alignItems: "flex-end",
    gap: 8,
  },
  infoTitle: {
    color: "#fff",
    fontSize: 16,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  epPill: {
    flexDirection: "row",
    direction: "ltr",
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
  intro: {
    color: "rgba(255,255,255,0.65)",
    fontFamily: "Cairo_400Regular",
    fontSize: 12,
    lineHeight: 20,
    textAlign: "right",
  },
  qualitySection: { gap: 8 },
  qualityHeader: {
    flexDirection: "row",
    direction: "ltr",
    alignItems: "center",
    justifyContent: "flex-end",
    gap: 6,
  },
  qualityDot: {
    width: 6,
    height: 6,
    borderRadius: 3,
  },
  qualityHeading: {
    fontFamily: "Cairo_700Bold",
    fontSize: 13,
    textAlign: "right",
  },
  serverListCard: {
    borderRadius: 16,
    backgroundColor: "rgba(16, 24, 24, 0.92)",
    borderWidth: 1,
    borderColor: "rgba(16, 185, 129, 0.18)",
    overflow: "hidden",
  },
  serverRow: {
    flexDirection: "row",
    direction: "ltr",
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
    flexDirection: "row",
    direction: "ltr",
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
    flexDirection: "row",
    direction: "ltr",
    alignItems: "center",
    gap: 8,
  },
  serverName: {
    color: "#fff",
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
    gap: 10,
  },
  dlSectionHeader: {
    flexDirection: "row",
    direction: "ltr",
    alignItems: "center",
    justifyContent: "space-between",
  },
  dlHeaderTitleRow: {
    flexDirection: "row",
    direction: "ltr",
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
    flexDirection: "row",
    direction: "ltr",
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
    flexDirection: "row",
    direction: "ltr",
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingVertical: 12,
  },
  dlRowDone: {
    backgroundColor: "rgba(16, 185, 129, 0.06)",
  },
  dlActionBtn: {
    flexDirection: "row",
    direction: "ltr",
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
    flexDirection: "row",
    direction: "ltr",
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
  center: { flex: 1, alignItems: "center", justifyContent: "center", padding: 26, gap: 10 },
  message: {
    color: "rgba(255,255,255,0.6)",
    fontFamily: "Cairo_400Regular",
    fontSize: 12,
    textAlign: "center",
    lineHeight: 20,
    paddingHorizontal: 24,
  },
  action: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
    marginTop: 7,
    paddingHorizontal: 16,
    paddingVertical: 10,
    borderRadius: 12,
    backgroundColor: "rgba(124,58,237,0.18)",
    borderWidth: 1,
    borderColor: "rgba(167,139,250,0.32)",
  },
  actionText: { color: "#C4B5FD", fontFamily: "Cairo_700Bold", fontSize: 12 },
});

