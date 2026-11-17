import { Ionicons } from "@expo/vector-icons";
import { useQuery } from "@tanstack/react-query";
import { useLocalSearchParams, useRouter } from "expo-router";
import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
  I18nManager,
  Image,
  Platform,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { FilmPlayer } from "@/components/FilmPlayer";
import { useColors } from "@/hooks/useColors";
import {
  fetchFilmDetail,
  fetchFilmSeason,
  fetchFilmSubtitleTracks,
  streamFilmSources,
} from "@/utils/filmApi";
import {
  buildFilmPlaybackKey,
  getImageSource,
  loadEpisodePlaybackProgress,
  loadWatchedMap,
  makeEpisodeKey,
  savePlaybackProgress,
  saveWatchedMap,
  type FilmEpisode,
  type FilmServerLink,
  type FilmSubtitleTrack,
  type FilmSummary,
  type TmdbMediaType,
} from "@/utils/filmCatalog";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
const ALIGN_RIGHT = I18nManager.isRTL ? "flex-start" : "flex-end";

function qualityBadgeColor(srv: FilmServerLink): string {
  if (srv.kind === "embed") return "#F59E0B";
  if (srv.qualityTier === "4K") return "#10B981";
  if (srv.qualityTier === "FHD") return "#0EA5E9";
  if (srv.qualityTier === "HD") return "#38BDF8";
  return "#94A3B8";
}

function tierRank(srv: FilmServerLink): number {
  const kindPenalty = srv.kind === "embed" ? 20 : srv.kind === "hls" ? 0 : 1;
  const qRank =
    srv.qualityTier === "4K"
      ? 0
      : srv.qualityTier === "FHD"
        ? 2
        : srv.qualityTier === "HD"
          ? 4
          : 6;
  return kindPenalty + qRank;
}

export default function NovaFilmWatchScreen() {
  const params = useLocalSearchParams<{
    id?: string;
    titleId?: string;
    type?: string;
    season?: string;
    episode?: string;
    title?: string;
    poster?: string;
  }>();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const colors = useColors();

  const rawId = params.id || params.titleId || "";
  const numId = Number(rawId) || 0;
  const initialSeason = Math.max(1, Number(params.season || "1") || 1);
  const initialEp = Math.max(1, Number(params.episode || "1") || 1);
  const tmdbType: TmdbMediaType =
    params.type === "tv" || params.type === "movie"
      ? params.type
      : Number(params.season || "0") > 0 || Number(params.episode || "1") > 1
        ? "tv"
        : "movie";
  const initialTitle = params.title ? String(params.title) : "";
  const initialPoster = params.poster ? String(params.poster) : "";

  const [currentSeason, setCurrentSeason] = useState(initialSeason);
  const [currentEpNum, setCurrentEpNum] = useState(initialEp);
  const [screen, setScreen] = useState<"picker" | "player">("picker");
  const [servers, setServers] = useState<FilmServerLink[]>([]);
  const [selectedServer, setSelectedServer] = useState<FilmServerLink | null>(null);
  const [subtitles, setSubtitles] = useState<FilmSubtitleTrack[]>([]);
  const [streamStatus, setStreamStatus] = useState<string>("جاري الاتصال بالخادم وجلب السيرفرات...");
  const [isStreaming, setIsStreaming] = useState(true);
  const [watchedMap, setWatchedMap] = useState<Record<string, boolean>>({});
  const [savedResumeSec, setSavedResumeSec] = useState(0);
  const [refreshTick, setRefreshTick] = useState(0);
  const lastProgressSaveRef = useRef(0);

  useEffect(() => {
    setCurrentSeason(initialSeason);
    setCurrentEpNum(initialEp);
  }, [rawId, initialSeason, initialEp]);

  const {
    data: detail,
    isLoading: detailLoading,
    isError: detailError,
  } = useQuery({
    queryKey: ["nova-film-detail", tmdbType, numId],
    queryFn: () => fetchFilmDetail(tmdbType, numId),
    enabled: numId > 0,
    staleTime: 10 * 60_000,
    retry: 1,
  });

  const { data: extraSeasonEps } = useQuery({
    queryKey: ["nova-film-season", numId, currentSeason],
    queryFn: () => fetchFilmSeason(numId, currentSeason),
    enabled:
      numId > 0 &&
      tmdbType === "tv" &&
      (currentSeason !== 1 || !detail?.episodes?.length),
    staleTime: 10 * 60_000,
  });

  const episodes: FilmEpisode[] = useMemo(() => {
    if (tmdbType === "tv") {
      if (currentSeason === 1 && detail?.episodes?.length) return detail.episodes;
      if (extraSeasonEps?.length) return extraSeasonEps;
      if (detail?.episodes?.length) return detail.episodes;
      return [
        {
          id: `${numId}-s${currentSeason}-e${currentEpNum}`,
          seasonNumber: currentSeason,
          episodeNumber: currentEpNum,
          titleAr: `الحلقة ${currentEpNum}`,
          titleEn: `Episode ${currentEpNum}`,
          runtimeMin: detail?.runtimeMin || 45,
          stillUrl: initialPoster || detail?.backdropUrl || null,
        },
      ];
    }
    return [
      {
        id: `${numId}-movie`,
        seasonNumber: 1,
        episodeNumber: 1,
        titleAr: detail?.titleAr || initialTitle || "الفيلم الكامل",
        titleEn: detail?.titleEn || initialTitle || "Full Movie",
        runtimeMin: detail?.runtimeMin || 115,
        stillUrl: detail?.backdropUrl || initialPoster || null,
      },
    ];
  }, [
    tmdbType,
    currentSeason,
    currentEpNum,
    detail,
    extraSeasonEps,
    numId,
    initialPoster,
    initialTitle,
  ]);

  const currentEp: FilmEpisode = useMemo(() => {
    return (
      episodes.find(
        (e) => e.seasonNumber === currentSeason && e.episodeNumber === currentEpNum,
      ) ||
      episodes.find((e) => e.episodeNumber === currentEpNum) ||
      episodes[0]
    );
  }, [episodes, currentSeason, currentEpNum]);

  const titleSnapshot: FilmSummary = useMemo(
    () => ({
      id: numId,
      tmdbType,
      mediaType: detail?.mediaType || (tmdbType === "tv" ? "series" : "movie"),
      titleAr: detail?.titleAr || initialTitle || `عمل رقم #${numId}`,
      titleEn: detail?.titleEn || initialTitle || "",
      overviewAr: detail?.overviewAr || "",
      posterUrl: detail?.posterUrl || initialPoster || null,
      backdropUrl: detail?.backdropUrl || initialPoster || null,
      year: detail?.year || new Date().getFullYear(),
      imdbRating: detail?.imdbRating || 0,
      qualityBadge: detail?.qualityBadge || "1080p",
      audioLabel: detail?.audioLabel || "مترجم للعربية",
      categoryLabel:
        detail?.categoryLabel || (tmdbType === "tv" ? "مسلسلات عالمية" : "أفلام عالمية"),
      genres: detail?.genres || [],
      durationOrSeasons: detail?.durationOrSeasons,
    }),
    [detail, numId, tmdbType, initialTitle, initialPoster],
  );

  // Ready to start live server query once detail resolves OR if error/fallback has initialTitle
  const lookupTitle = useMemo(() => {
    if (detail) return detail.titleEn || detail.titleAr || initialTitle;
    if (detailError || !detailLoading) return initialTitle || String(numId);
    return "";
  }, [detail, detailError, detailLoading, initialTitle, numId]);

  // Load local watched state & resume position for this episode
  useEffect(() => {
    let active = true;
    Promise.all([
      loadWatchedMap(),
      loadEpisodePlaybackProgress(numId, currentSeason, currentEpNum, tmdbType),
    ]).then(([map, pos]) => {
      if (!active) return;
      setWatchedMap(map);
      setSavedResumeSec(pos);
    });
    return () => {
      active = false;
    };
  }, [numId, currentSeason, currentEpNum, tmdbType]);

  // Live SSE streaming of sources + subtitle tracks
  useEffect(() => {
    if (!numId || !lookupTitle) return;
    const ac = new AbortController();
    let cancelled = false;

    setServers([]);
    setSelectedServer(null);
    setSubtitles([]);
    setIsStreaming(true);
    setStreamStatus("جاري فحص السيرفرات المباشرة على الخادم...");

    // Parallel live subtitles fetch
    fetchFilmSubtitleTracks({
      tmdbId: numId,
      tmdbType,
      season: currentSeason,
      episode: currentEpNum,
      title: lookupTitle,
    })
      .then((tracks) => {
        if (!cancelled && tracks.length) setSubtitles(tracks);
      })
      .catch(() => {});

    streamFilmSources({
      tmdbId: numId,
      tmdbType,
      season: currentSeason,
      episode: currentEpNum,
      title: lookupTitle,
      forceRefresh: refreshTick > 0,
      signal: ac.signal,
      onStatus: (msg) => {
        if (!cancelled) setStreamStatus(msg);
      },
      onSource: (srv) => {
        if (cancelled) return;
        setServers((prev) => {
          const next = [...prev, srv].sort((a, b) => tierRank(a) - tierRank(b));
          setSelectedServer((cur) => cur || next[0]);
          return next;
        });
        if (srv.subtitleUrl) {
          setSubtitles((prev) => {
            if (prev.some((t) => t.url === srv.subtitleUrl)) return prev;
            return [
              {
                id: `srv-sub-${srv.id}`,
                lang: "ar",
                label: "ترجمة عربية تلقائية",
                url: srv.subtitleUrl!,
              },
              ...prev,
            ];
          });
        }
      },
      onDone: () => {
        if (!cancelled) {
          setIsStreaming(false);
          setStreamStatus("");
        }
      },
    }).catch(() => {
      if (!cancelled) {
        setIsStreaming(false);
      }
    });

    return () => {
      cancelled = true;
      ac.abort();
    };
  }, [numId, tmdbType, currentSeason, currentEpNum, lookupTitle, refreshTick]);

  const epKey = makeEpisodeKey(numId, currentSeason, currentEpNum, tmdbType);
  const isWatched = Boolean(watchedMap[epKey]);

  const toggleWatched = useCallback(async () => {
    const next = { ...watchedMap };
    if (next[epKey]) delete next[epKey];
    else next[epKey] = true;
    setWatchedMap(next);
    await saveWatchedMap(next);
  }, [watchedMap, epKey]);

  const currentIdx = episodes.findIndex(
    (e) => e.seasonNumber === currentSeason && e.episodeNumber === currentEpNum,
  );
  const prevEp = currentIdx > 0 ? episodes[currentIdx - 1] : undefined;
  const nextEp =
    currentIdx >= 0 && currentIdx < episodes.length - 1
      ? episodes[currentIdx + 1]
      : undefined;

  const persistProgress = useCallback(
    (seasonNumber: number, episodeNumber: number, positionSec: number, durationSec: number) => {
      void savePlaybackProgress({
        key: buildFilmPlaybackKey(numId, seasonNumber, episodeNumber, tmdbType),
        titleId: numId,
        tmdbType,
        seasonNumber,
        episodeNumber,
        positionSec,
        durationSec: durationSec || (currentEp?.runtimeMin || 45) * 60,
        updatedAt: Date.now(),
        titleSnapshot,
      });
    },
    [numId, tmdbType, currentEp?.runtimeMin, titleSnapshot],
  );

  const switchEpisode = (target: FilmEpisode, stayInPlayer = false) => {
    setCurrentSeason(target.seasonNumber);
    setCurrentEpNum(target.episodeNumber);
    setRefreshTick(0);
    setScreen(stayInPlayer ? "player" : "picker");
    persistProgress(target.seasonNumber, target.episodeNumber, 0, (target.runtimeMin || 45) * 60);
  };

  const launchServer = (srv: FilmServerLink) => {
    setSelectedServer(srv);
    setScreen("player");
    persistProgress(
      currentSeason,
      currentEpNum,
      savedResumeSec > 5 ? savedResumeSec : 15,
      (currentEp?.runtimeMin || 45) * 60,
    );
  };

  const serverGroups = useMemo(() => {
    const uhd = servers.filter(
      (srv) => srv.kind !== "embed" && (srv.qualityTier === "4K" || srv.qualityTier === "FHD"),
    );
    const std = servers.filter(
      (srv) => srv.kind !== "embed" && srv.qualityTier !== "4K" && srv.qualityTier !== "FHD",
    );
    const embed = servers.filter((srv) => srv.kind === "embed");

    return [
      {
        id: "uhd",
        title: "سيرفرات فائقة الجودة (4K / 1080p)",
        subtitle: "بث مباشر سريع يدعم الترجمة والتحكم الكامل",
        dotColor: "#10B981",
        items: uhd,
      },
      {
        id: "std",
        title: "سيرفرات قياسية مستقرة (720p / SD)",
        subtitle: "مثالية لتوفير البيانات والاتصال المتوسط",
        dotColor: "#0EA5E9",
        items: std,
      },
      {
        id: "embed",
        title: "مشغلات مضمّنة واحتياطية",
        subtitle: "بديل موثوق عند انشغال السيرفرات الرئيسية",
        dotColor: "#F59E0B",
        items: embed,
      },
    ].filter((g) => g.items.length > 0);
  }, [servers]);

  const goBack = () => {
    if (router.canGoBack()) router.back();
    else router.replace("/(tabs)" as any);
  };

  /* ═══════════════ INTERNAL VIDEO PLAYER ═══════════════ */
  if (screen === "player" && selectedServer) {
    const epLabel =
      tmdbType === "tv"
        ? `الموسم ${currentSeason} · الحلقة ${currentEpNum}`
        : currentEp?.titleAr || titleSnapshot.titleAr;

    return (
      <FilmPlayer
        title={titleSnapshot.titleAr}
        episodeLabel={epLabel}
        servers={servers.length ? servers : [selectedServer]}
        activeServer={selectedServer}
        subtitles={subtitles}
        onSelectServer={(srv) => launchServer(srv)}
        onBack={() => setScreen("picker")}
        isWatched={isWatched}
        onToggleWatched={toggleWatched}
        onPrevEpisode={prevEp ? () => switchEpisode(prevEp, true) : undefined}
        onNextEpisode={nextEp ? () => switchEpisode(nextEp, true) : undefined}
        initialPosition={savedResumeSec}
        onProgress={(pos, dur) => {
          const now = Date.now();
          if (now - lastProgressSaveRef.current < 4000) return;
          lastProgressSaveRef.current = now;
          persistProgress(currentSeason, currentEpNum, pos, dur);
        }}
      />
    );
  }

  /* ═══════════════ SERVERS PICKER SCREEN ═══════════════ */
  const topPad =
    Platform.OS === "web" ? 12 : Math.max(insets.top, Platform.OS === "android" ? 24 : 44);
  const bgSource = getImageSource(titleSnapshot.backdropUrl || titleSnapshot.posterUrl);
  const posterSource = getImageSource(titleSnapshot.posterUrl || titleSnapshot.backdropUrl);

  return (
    <View style={[s.container, { backgroundColor: colors.background }]}>
      {bgSource ? (
        <Image
          source={bgSource}
          style={[StyleSheet.absoluteFill, { opacity: 0.09 }]}
          blurRadius={Platform.OS === "ios" ? 28 : 10}
          resizeMode="cover"
        />
      ) : null}
      <View
        pointerEvents="none"
        style={[StyleSheet.absoluteFill, { backgroundColor: colors.background, opacity: 0.92 }]}
      />

      {/* Top Picker Header (RTL: Back on Physical Right) */}
      <View
        style={[
          s.header,
          {
            paddingTop: topPad + 6,
            borderBottomColor: colors.border,
          },
        ]}
      >
        <Pressable
          onPress={goBack}
          accessibilityLabel="رجوع"
          style={[s.headerBack, { backgroundColor: colors.surface, borderColor: colors.border }]}
        >
          <Ionicons name="chevron-forward" size={19} color={colors.textPrimary} />
        </Pressable>

        <View style={s.headerCenter}>
          <Text style={[s.headerTitle, { color: colors.textPrimary }]} numberOfLines={1}>
            {titleSnapshot.titleAr}
          </Text>
          <Text style={[s.headerSub, { color: colors.textSecondary }]} numberOfLines={1}>
            {tmdbType === "tv"
              ? `الموسم ${currentSeason} · الحلقة ${currentEpNum}`
              : currentEp?.titleAr || titleSnapshot.categoryLabel}
          </Text>
        </View>

        <View style={s.headerNavGroup}>
          {tmdbType === "tv" ? (
            <>
              <Pressable
                disabled={!prevEp}
                onPress={() => prevEp && switchEpisode(prevEp, false)}
                style={[
                  s.epNavBtn,
                  {
                    backgroundColor: colors.surface,
                    borderColor: colors.border,
                    opacity: prevEp ? 1 : 0.3,
                  },
                ]}
              >
                <Ionicons name="chevron-forward" size={13} color={colors.textSecondary} />
                <Text style={[s.epNavText, { color: colors.textSecondary }]}>السابقة</Text>
              </Pressable>

              <Pressable
                disabled={!nextEp}
                onPress={() => nextEp && switchEpisode(nextEp, false)}
                style={[
                  s.epNavBtn,
                  {
                    backgroundColor: colors.accentSurface,
                    borderColor: colors.accentBorder,
                    opacity: nextEp ? 1 : 0.3,
                  },
                ]}
              >
                <Text style={[s.epNavText, { color: colors.accent }]}>التالية</Text>
                <Ionicons name="chevron-back" size={13} color={colors.accent} />
              </Pressable>
            </>
          ) : null}

          <Pressable
            onPress={() => setRefreshTick((t) => t + 1)}
            accessibilityLabel="تحديث السيرفرات"
            style={[s.headerBack, { backgroundColor: colors.surface, borderColor: colors.border }]}
          >
            <Ionicons name="refresh" size={16} color={colors.accent} />
          </Pressable>
        </View>
      </View>

      <ScrollView
        showsVerticalScrollIndicator={false}
        contentContainerStyle={{ padding: 14, paddingBottom: 50, gap: 14 }}
      >
        {/* Episode / Movie Info Card */}
        <View style={[s.infoCard, { backgroundColor: colors.card, borderColor: colors.border }]}>
          {posterSource ? (
            <Image source={posterSource} style={s.infoThumb} resizeMode="cover" />
          ) : (
            <View style={[s.infoThumb, { alignItems: "center", justifyContent: "center" }]}>
              <Ionicons name="film-outline" size={28} color={colors.textMuted} />
            </View>
          )}
          <View style={s.infoBody}>
            <Text style={[s.infoTitle, { color: colors.textPrimary }]} numberOfLines={2}>
              {tmdbType === "tv" ? currentEp?.titleAr || titleSnapshot.titleAr : titleSnapshot.titleAr}
            </Text>
            <Text style={[s.infoMeta, { color: colors.textSecondary }]} numberOfLines={1}>
              {currentEp?.runtimeMin || detail?.runtimeMin || 45} دقيقة · {titleSnapshot.audioLabel} ·{" "}
              {titleSnapshot.qualityBadge}
            </Text>

            <View style={s.infoPillsRow}>
              <Pressable
                onPress={toggleWatched}
                style={[
                  s.eyePill,
                  {
                    backgroundColor: isWatched ? "rgba(16,185,129,0.16)" : colors.surfaceElevated,
                    borderColor: isWatched ? "#10B981" : colors.border,
                  },
                ]}
              >
                <Ionicons
                  name={isWatched ? "eye" : "eye-outline"}
                  size={14}
                  color={isWatched ? "#10B981" : colors.textSecondary}
                />
                <Text
                  style={[
                    s.eyePillText,
                    { color: isWatched ? "#10B981" : colors.textSecondary },
                  ]}
                >
                  {isWatched ? "تمت المشاهدة" : "تحديد كمشاهد"}
                </Text>
              </Pressable>

              <Pressable
                disabled={servers.length === 0}
                onPress={() => {
                  if (servers[0]) launchServer(servers[0]);
                }}
                style={[
                  s.quickStartBtn,
                  servers.length === 0 && { opacity: 0.45 },
                ]}
              >
                <Ionicons name="play" size={14} color="#FFFFFF" />
                <Text style={s.quickStartText}>
                  {servers.length > 0 ? "تشغيل أسرع سيرفر" : "جاري التحضير..."}
                </Text>
              </Pressable>
            </View>
          </View>
        </View>

        {/* Live Server Search Status Banner */}
        {isStreaming ? (
          <View
            style={[
              s.streamingBanner,
              {
                backgroundColor: colors.card,
                borderColor: "rgba(14,165,233,0.35)",
              },
            ]}
          >
            <ActivityIndicator size="small" color="#0EA5E9" />
            <View style={{ flex: 1, alignItems: ALIGN_RIGHT }}>
              <Text style={[s.streamingTitle, { color: colors.textPrimary }]} numberOfLines={1}>
                {streamStatus || "جاري البحث عن روابط البث المباشر..."}
              </Text>
              <Text style={[s.streamingSub, { color: colors.textMuted }]}>
                تم العثور على {servers.length} سيرفر حتى الآن · يضاف تلقائياً فور جاهزيته
              </Text>
            </View>
          </View>
        ) : null}

        {/* Empty State (Only after stream completes with 0 servers) */}
        {!isStreaming && servers.length === 0 ? (
          <View
            style={[
              s.emptyServersCard,
              { backgroundColor: colors.card, borderColor: colors.border },
            ]}
          >
            <Ionicons name="cloud-offline-outline" size={34} color="#F59E0B" />
            <Text style={[s.emptyTitle, { color: colors.textPrimary }]}>
              لم تتوفر سيرفرات حالياً لهذا العرض
            </Text>
            <Text style={[s.emptyDesc, { color: colors.textSecondary }]}>
              جرّب تحديث السيرفرات أو اختيار حلقة/موسم آخر، قد يستغرق جلب بعض السيرفرات ثوانٍ إضافية.
            </Text>
            <Pressable
              onPress={() => setRefreshTick((t) => t + 1)}
              style={s.retryBtn}
            >
              <Ionicons name="refresh" size={15} color="#FFFFFF" />
              <Text style={s.retryBtnText}>إعادة فحص السيرفرات</Text>
            </Pressable>
          </View>
        ) : null}

        {/* Live Subtitle Info Strip */}
        {subtitles.length > 0 ? (
          <View
            style={[
              s.subStrip,
              { backgroundColor: "rgba(16,185,129,0.09)", borderColor: "rgba(16,185,129,0.28)" },
            ]}
          >
            <Ionicons name="text" size={15} color="#10B981" />
            <Text style={[s.subStripText, { color: "#10B981" }]}>
              تتوفر {subtitles.length} ملفات ترجمة مباشرة (عربي / إنجليزي) داخل المشغل
            </Text>
          </View>
        ) : null}

        {/* Live Server Groups */}
        {serverGroups.map((group) => (
          <View key={group.id} style={s.groupWrap}>
            <View style={s.groupHeader}>
              <View style={[s.groupDot, { backgroundColor: group.dotColor }]} />
              <View style={{ flex: 1, alignItems: ALIGN_RIGHT }}>
                <Text style={[s.groupTitle, { color: colors.textPrimary }]}>{group.title}</Text>
                <Text style={[s.groupSub, { color: colors.textMuted }]}>{group.subtitle}</Text>
              </View>
              <View style={[s.groupCountPill, { backgroundColor: group.dotColor + "20" }]}>
                <Text style={[s.groupCountText, { color: group.dotColor }]}>
                  {group.items.length} سيرفرات
                </Text>
              </View>
            </View>

            <View
              style={[
                s.serverGroupCard,
                { backgroundColor: colors.card, borderColor: colors.border },
              ]}
            >
              {group.items.map((srv, idx) => {
                const isLast = idx === group.items.length - 1;
                const badgeCol = qualityBadgeColor(srv);
                return (
                  <Pressable
                    key={srv.id}
                    onPress={() => launchServer(srv)}
                    style={({ pressed }) => [
                      s.serverRow,
                      !isLast && { borderBottomWidth: 1, borderBottomColor: colors.border },
                      pressed && { backgroundColor: colors.surfaceElevated },
                    ]}
                  >
                    <View style={[s.serverStatusDot, { backgroundColor: badgeCol }]} />
                    <View style={s.serverInfoCol}>
                      <Text style={[s.serverName, { color: colors.textPrimary }]} numberOfLines={1}>
                        {srv.name}
                      </Text>
                      <Text style={[s.serverSub, { color: colors.textMuted }]} numberOfLines={1}>
                        {srv.note || "بث مباشر"}
                        {srv.subtitleUrl ? " · يدعم الترجمة العربية" : ""}
                      </Text>
                    </View>
                    <View style={s.serverRightActions}>
                      <View
                        style={[
                          s.qBadge,
                          {
                            backgroundColor: badgeCol + "1C",
                            borderColor: badgeCol + "45",
                          },
                        ]}
                      >
                        <Text style={[s.qBadgeText, { color: badgeCol }]}>{srv.quality}</Text>
                      </View>
                      <View style={s.playRowBtn}>
                        <Ionicons name="play" size={13} color="#FFFFFF" />
                        <Text style={s.playRowBtnText}>تشغيل</Text>
                      </View>
                    </View>
                  </Pressable>
                );
              })}
            </View>
          </View>
        ))}

        {/* Dynamic Episodes Strip (for TV Series) */}
        {tmdbType === "tv" && episodes.length > 1 ? (
          <View style={s.quickEpsSection}>
            <Text style={[s.groupTitle, { color: colors.textPrimary, textAlign: "right" }]}>
              حلقات الموسم {currentSeason} ({episodes.length})
            </Text>
            <View style={s.epsWrap}>
              {episodes.map((ep) => {
                const isCur =
                  ep.seasonNumber === currentSeason && ep.episodeNumber === currentEpNum;
                const done = Boolean(
                  watchedMap[makeEpisodeKey(numId, ep.seasonNumber, ep.episodeNumber, tmdbType)],
                );
                return (
                  <Pressable
                    key={ep.id}
                    onPress={() => switchEpisode(ep, false)}
                    style={[
                      s.epPill,
                      {
                        backgroundColor: isCur ? "#0EA5E9" : colors.card,
                        borderColor: isCur ? "#0EA5E9" : done ? "#10B981" : colors.border,
                      },
                    ]}
                  >
                    <Text
                      style={[
                        s.epPillText,
                        { color: isCur ? "#FFFFFF" : colors.textPrimary },
                      ]}
                    >
                      ح {ep.episodeNumber} {done ? "✓" : ""}
                    </Text>
                  </Pressable>
                );
              })}
            </View>
          </View>
        ) : null}
      </ScrollView>
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  header: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingBottom: 10,
    borderBottomWidth: 1,
    gap: 8,
  },
  headerBack: {
    width: 38,
    height: 38,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  headerCenter: { flex: 1, minWidth: 0, alignItems: ALIGN_RIGHT },
  headerTitle: {
    fontSize: 14.5,
    lineHeight: 21,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
    includeFontPadding: true,
  },
  headerSub: {
    fontSize: 11,
    lineHeight: 16,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
  },
  headerNavGroup: { flexDirection: ROW_RTL, alignItems: "center", gap: 6 },
  epNavBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 3,
    height: 36,
    paddingHorizontal: 10,
    borderRadius: 11,
    borderWidth: 1,
  },
  epNavText: { fontSize: 11, fontFamily: "Cairo_700Bold", includeFontPadding: true },
  infoCard: {
    flexDirection: ROW_RTL,
    borderWidth: 1,
    borderRadius: 18,
    padding: 12,
    gap: 12,
    alignItems: "center",
  },
  infoThumb: { width: 78, height: 112, borderRadius: 12, backgroundColor: "#14171C" },
  infoBody: { flex: 1, alignItems: ALIGN_RIGHT, gap: 5 },
  infoTitle: {
    fontSize: 14.5,
    lineHeight: 22,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
    includeFontPadding: true,
  },
  infoMeta: { fontSize: 11.5, fontFamily: "Cairo_600SemiBold", textAlign: "right" },
  infoPillsRow: {
    flexDirection: ROW_RTL,
    flexWrap: "wrap",
    gap: 8,
    marginTop: 4,
  },
  eyePill: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 5,
    paddingHorizontal: 11,
    paddingVertical: 6,
    borderRadius: 11,
    borderWidth: 1,
  },
  eyePillText: { fontSize: 11, fontFamily: "Cairo_700Bold", includeFontPadding: true },
  quickStartBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 5,
    backgroundColor: "#0EA5E9",
    paddingHorizontal: 13,
    paddingVertical: 7,
    borderRadius: 11,
  },
  quickStartText: { color: "#FFFFFF", fontSize: 11.5, fontFamily: "Cairo_800ExtraBold", includeFontPadding: true },
  streamingBanner: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
    borderWidth: 1,
    borderRadius: 14,
    paddingHorizontal: 13,
    paddingVertical: 11,
  },
  streamingTitle: { fontSize: 12.5, fontFamily: "Cairo_700Bold", textAlign: "right" },
  streamingSub: { fontSize: 10.5, fontFamily: "Cairo_400Regular", textAlign: "right", marginTop: 1 },
  emptyServersCard: {
    alignItems: "center",
    gap: 8,
    borderWidth: 1,
    borderRadius: 18,
    padding: 22,
  },
  emptyTitle: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", textAlign: "center" },
  emptyDesc: { fontSize: 11.5, fontFamily: "Cairo_400Regular", textAlign: "center", lineHeight: 19 },
  retryBtn: {
    marginTop: 6,
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    backgroundColor: "#0EA5E9",
    paddingHorizontal: 16,
    paddingVertical: 9,
    borderRadius: 12,
  },
  retryBtnText: { color: "#FFFFFF", fontSize: 12, fontFamily: "Cairo_800ExtraBold" },
  subStrip: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
    borderWidth: 1,
    borderRadius: 12,
    paddingHorizontal: 12,
    paddingVertical: 8,
  },
  subStripText: { flex: 1, fontSize: 11.5, fontFamily: "Cairo_700Bold", textAlign: "right" },
  groupWrap: { gap: 8 },
  groupHeader: { flexDirection: ROW_RTL, alignItems: "center", gap: 8, paddingHorizontal: 2 },
  groupDot: { width: 8, height: 8, borderRadius: 4 },
  groupTitle: {
    fontSize: 14,
    lineHeight: 21,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
    includeFontPadding: true,
  },
  groupSub: { fontSize: 11, fontFamily: "Cairo_400Regular", textAlign: "right" },
  groupCountPill: { paddingHorizontal: 10, paddingVertical: 3, borderRadius: 999 },
  groupCountText: { fontSize: 10.5, fontFamily: "Cairo_700Bold" },
  serverGroupCard: {
    borderWidth: 1,
    borderRadius: 16,
    overflow: "hidden",
  },
  serverRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    paddingHorizontal: 13,
    paddingVertical: 13,
    gap: 10,
  },
  serverStatusDot: { width: 8, height: 8, borderRadius: 4 },
  serverInfoCol: { flex: 1, alignItems: ALIGN_RIGHT, gap: 2 },
  serverName: {
    fontSize: 13.5,
    lineHeight: 20,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
    includeFontPadding: true,
  },
  serverSub: { fontSize: 11, fontFamily: "Cairo_400Regular", textAlign: "right" },
  serverRightActions: { flexDirection: ROW_RTL, alignItems: "center", gap: 8 },
  qBadge: {
    paddingHorizontal: 9,
    paddingVertical: 3.5,
    borderRadius: 8,
    borderWidth: 1,
  },
  qBadgeText: { fontSize: 10.5, fontFamily: "Cairo_800ExtraBold" },
  playRowBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 5,
    backgroundColor: "#10B981",
    paddingHorizontal: 12,
    paddingVertical: 6.5,
    borderRadius: 10,
  },
  playRowBtnText: { color: "#FFFFFF", fontSize: 11.5, fontFamily: "Cairo_800ExtraBold", includeFontPadding: true },
  quickEpsSection: { marginTop: 6, gap: 10 },
  epsWrap: { flexDirection: ROW_RTL, flexWrap: "wrap", gap: 8 },
  epPill: {
    borderWidth: 1,
    borderRadius: 11,
    paddingHorizontal: 13,
    paddingVertical: 8,
  },
  epPillText: { fontSize: 12, fontFamily: "Cairo_700Bold", includeFontPadding: true },
});
