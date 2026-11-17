import { Ionicons } from "@expo/vector-icons";
import { useQuery } from "@tanstack/react-query";
import { LinearGradient } from "expo-linear-gradient";
import { useFocusEffect, useLocalSearchParams, useRouter } from "expo-router";
import React, { useCallback, useEffect, useMemo, useState } from "react";
import {
  ActivityIndicator,
  I18nManager,
  Image,
  Modal,
  Platform,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
  useWindowDimensions,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { FilmPosterCard } from "@/components/FilmPosterCard";
import { YoutubeTrailerModal } from "@/components/YoutubeTrailerModal";
import type { ThemePalette } from "@/constants/colors";
import { useColors } from "@/hooks/useColors";
import { fetchFilmDetail, fetchFilmSeason } from "@/utils/filmApi";
import {
  getImageSource,
  loadFavoriteFilms,
  loadUserRating,
  loadWatchedMap,
  makeEpisodeKey,
  saveUserRating,
  toggleEpisodeWatched,
  toggleFavoriteFilm,
  type FilmEpisode,
  type FilmSummary,
  type TmdbMediaType,
} from "@/utils/filmCatalog";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
const ALIGN_RIGHT = I18nManager.isRTL ? "flex-start" : "flex-end";

export default function FilmDetailScreen() {
  const params = useLocalSearchParams<{ id: string; type?: string; title?: string }>();
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const { width } = useWindowDimensions();

  const tmdbType: TmdbMediaType = params.type === "tv" ? "tv" : "movie";
  const tmdbId = String(params.id || "");
  const initialTitle = params.title ? String(params.title) : "تفاصيل العمل";

  const d = useMemo(() => createDetailStyles(colors), [colors]);

  const {
    data: detail,
    isLoading,
    error,
    refetch,
  } = useQuery({
    queryKey: ["nova-film-detail", tmdbType, tmdbId],
    queryFn: () => fetchFilmDetail(tmdbType, tmdbId),
    enabled: Boolean(tmdbId),
    staleTime: 10 * 60_000,
    retry: 2,
  });

  const [tab, setTab] = useState<"overview" | "episodes" | "cast" | "related">("overview");
  const [selectedSeason, setSelectedSeason] = useState<number>(1);
  const [seasonEpisodes, setSeasonEpisodes] = useState<FilmEpisode[]>([]);
  const [seasonLoading, setSeasonLoading] = useState(false);

  const [isFav, setIsFav] = useState(false);
  const [myRating, setMyRating] = useState(0);
  const [watchedMap, setWatchedMap] = useState<Record<string, boolean>>({});
  const [showFullSynopsis, setShowFullSynopsis] = useState(false);
  const [showRatingModal, setShowRatingModal] = useState(false);
  const [showTrailerModal, setShowTrailerModal] = useState(false);
  const [showInfoModal, setShowInfoModal] = useState(false);

  useEffect(() => {
    if (!detail) return;
    if (detail.seasons.length > 0) {
      setSelectedSeason(detail.seasons[0].seasonNumber);
    } else {
      setSelectedSeason(1);
    }
    setSeasonEpisodes(detail.episodes || []);
  }, [detail]);

  const handleSelectSeason = async (sNum: number) => {
    setSelectedSeason(sNum);
    if (!detail || detail.tmdbType !== "tv") return;
    if (detail.seasons[0]?.seasonNumber === sNum && detail.episodes.length > 0) {
      setSeasonEpisodes(detail.episodes);
      return;
    }
    setSeasonLoading(true);
    try {
      const eps = await fetchFilmSeason(detail.id, sNum);
      setSeasonEpisodes(eps);
    } catch {
      setSeasonEpisodes([]);
    } finally {
      setSeasonLoading(false);
    }
  };

  useFocusEffect(
    useCallback(() => {
      if (!tmdbId) return;
      Promise.all([
        loadFavoriteFilms(),
        loadWatchedMap(),
        loadUserRating(tmdbType, Number(tmdbId)),
      ]).then(([favs, watched, rating]) => {
        setIsFav(favs.some((f) => String(f.id) === tmdbId && f.tmdbType === tmdbType));
        setWatchedMap(watched);
        setMyRating(rating);
      });
    }, [tmdbId, tmdbType]),
  );

  const handleToggleFavorite = async () => {
    if (!detail) return;
    const summary: FilmSummary = {
      id: detail.id,
      tmdbType: detail.tmdbType,
      mediaType: detail.mediaType,
      titleAr: detail.titleAr,
      titleEn: detail.titleEn,
      overviewAr: detail.overviewAr,
      posterUrl: detail.posterUrl,
      backdropUrl: detail.backdropUrl,
      year: detail.year,
      imdbRating: detail.imdbRating,
      qualityBadge: detail.qualityBadge,
      audioLabel: detail.audioLabel,
      categoryLabel: detail.categoryLabel,
      genres: detail.genres,
      durationOrSeasons: detail.durationOrSeasons,
    };
    const next = await toggleFavoriteFilm(summary);
    setIsFav(next.some((x) => x.id === detail.id && x.tmdbType === detail.tmdbType));
  };

  const handlePickRating = async (val: number) => {
    if (!detail) return;
    setMyRating(val);
    await saveUserRating(detail.tmdbType, detail.id, val);
    setShowRatingModal(false);
  };

  const handleToggleEpWatched = async (ep: FilmEpisode) => {
    if (!detail) return;
    const next = await toggleEpisodeWatched(detail.id, ep.seasonNumber, ep.episodeNumber, detail.tmdbType);
    setWatchedMap(next);
  };

  const watchedCount = useMemo(() => {
    if (!detail) return 0;
    return seasonEpisodes.filter(
      (ep) => watchedMap[makeEpisodeKey(detail.id, ep.seasonNumber, ep.episodeNumber, detail.tmdbType)],
    ).length;
  }, [detail, seasonEpisodes, watchedMap]);

  const nextUnwatchedEp = useMemo(() => {
    if (!detail) return undefined;
    return (
      seasonEpisodes.find(
        (ep) => !watchedMap[makeEpisodeKey(detail.id, ep.seasonNumber, ep.episodeNumber, detail.tmdbType)],
      ) || seasonEpisodes[0]
    );
  }, [detail, seasonEpisodes, watchedMap]);

  const openWatch = (ep?: FilmEpisode) => {
    if (!detail) return;
    const targetSeason = ep?.seasonNumber || selectedSeason || 1;
    const targetEp = ep?.episodeNumber || 1;
    router.push({
      pathname: "/film/watch" as any,
      params: {
        id: String(detail.id),
        type: detail.tmdbType,
        season: String(targetSeason),
        episode: String(targetEp),
        title: detail.titleAr,
        poster: detail.posterUrl || detail.backdropUrl || "",
      },
    });
  };

  const openEpisodesPage = () => {
    if (!detail) return;
    router.push({
      pathname: "/film/episodes/[id]" as any,
      params: {
        id: String(detail.id),
        type: detail.tmdbType,
        title: detail.titleAr,
      },
    });
  };

  const topPad = Platform.OS === "web" ? 10 : Math.max(insets.top, Platform.OS === "android" ? 24 : 44);
  const goBack = () => (router.canGoBack() ? router.back() : router.replace("/(tabs)" as any));

  if (isLoading && !detail) {
    return (
      <View style={d.container}>
        <View style={[d.topBar, { paddingTop: topPad, height: topPad + 54 }]}>
          <Pressable onPress={goBack} style={d.topBarBack} accessibilityLabel="رجوع">
            <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
          </Pressable>
          <Text style={d.topBarTitle} numberOfLines={1}>
            {initialTitle}
          </Text>
          <View style={{ width: 38 }} />
        </View>
        <View style={d.centerWrap}>
          <ActivityIndicator size="large" color="#0EA5E9" />
          <Text style={d.loadingText}>جارٍ تحميل تفاصيل العمل...</Text>
        </View>
      </View>
    );
  }

  if (error || !detail) {
    return (
      <View style={d.container}>
        <View style={[d.topBar, { paddingTop: topPad, height: topPad + 54 }]}>
          <Pressable onPress={goBack} style={d.topBarBack} accessibilityLabel="رجوع">
            <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
          </Pressable>
          <Text style={d.topBarTitle} numberOfLines={1}>
            {initialTitle}
          </Text>
          <View style={{ width: 38 }} />
        </View>
        <View style={d.centerWrap}>
          <Ionicons name="cloud-offline-outline" size={44} color="#F87171" />
          <Text style={d.loadingText}>تعذّر تحميل تفاصيل هذا العمل من الخادم</Text>
          <Pressable onPress={() => void refetch()} style={d.retryBtn}>
            <Ionicons name="refresh" size={16} color="#FFFFFF" />
            <Text style={d.retryBtnText}>إعادة المحاولة</Text>
          </Pressable>
        </View>
      </View>
    );
  }

  const backdropSrc = getImageSource(detail.backdropUrl || detail.posterUrl);
  const posterSrc = getImageSource(detail.posterUrl || detail.backdropUrl);

  return (
    <View style={d.container}>
      {/* Sticky RTL Top Bar: Back Button on Physical RIGHT, Title, Status Badge on Physical LEFT */}
      <View style={[d.topBar, { paddingTop: topPad, height: topPad + 54 }]}>
        <Pressable onPress={goBack} style={d.topBarBack} accessibilityLabel="رجوع">
          <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
        </Pressable>
        <Text style={d.topBarTitle} numberOfLines={1}>
          {detail.titleAr}
        </Text>
        <View style={d.topBarStatus}>
          <View
            style={[
              d.topBarStatusDot,
              {
                backgroundColor:
                  detail.statusLabel === "مستمر"
                    ? "#10B981"
                    : detail.statusLabel === "مكتمل"
                      ? "#8B5CF6"
                      : "#0EA5E9",
              },
            ]}
          />
          <Text style={d.topBarStatusText}>{detail.statusLabel}</Text>
        </View>
      </View>

      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={{ paddingBottom: 48 }}>
        {/* Banner Hero */}
        <View style={d.hero}>
          {backdropSrc ? (
            <Image source={backdropSrc} style={StyleSheet.absoluteFill} resizeMode="cover" />
          ) : null}
          <LinearGradient
            colors={["rgba(9,10,12,0.20)", "rgba(9,10,12,0.60)", colors.background]}
            style={StyleSheet.absoluteFill}
          />
          <Pressable onPress={() => void handleToggleFavorite()} style={d.favCircleBtn}>
            <Ionicons
              name={isFav ? "heart" : "heart-outline"}
              size={20}
              color={isFav ? "#EF4444" : "#FFFFFF"}
            />
          </Pressable>
        </View>

        {/* Overlapping Poster & Primary Info */}
        <View style={d.infoRow}>
          {posterSrc ? (
            <Image source={posterSrc} style={d.cover} resizeMode="cover" />
          ) : (
            <View style={[d.cover, { alignItems: "center", justifyContent: "center" }]}>
              <Ionicons name="film-outline" size={32} color="#64748B" />
            </View>
          )}
          <View style={d.infoText}>
            <Text style={d.titleMain}>{detail.titleAr}</Text>
            <Text style={d.titleSubEn} numberOfLines={1}>
              {detail.titleEn}
            </Text>

            <View style={d.badgeRow}>
              <View style={[d.badge, d.badgeScore]}>
                <Ionicons name="star" size={11} color="#FBBF24" />
                <Text style={d.badgeScoreText}>{detail.imdbRating.toFixed(1)}</Text>
              </View>
              <View style={[d.badge, d.badgePrimary]}>
                <Text style={d.badgePrimaryText}>{detail.qualityBadge}</Text>
              </View>
              <View style={[d.badge, d.badgeDefault]}>
                <Text style={d.badgeDefaultText}>{detail.audioLabel}</Text>
              </View>
            </View>

            <View style={d.statsRow}>
              <View style={d.statItem}>
                <Ionicons name="calendar-outline" size={12} color={colors.textSecondary} />
                <Text style={d.statText}>{detail.year}</Text>
              </View>
              <View style={d.statItem}>
                <Ionicons name="time-outline" size={12} color={colors.textSecondary} />
                <Text style={d.statText}>{detail.durationOrSeasons}</Text>
              </View>
              <View style={d.statItem}>
                <Ionicons name="shield-checkmark-outline" size={12} color={colors.textSecondary} />
                <Text style={d.statText}>{detail.ageRating}</Text>
              </View>
            </View>
          </View>
        </View>

        {/* Watch CTA */}
        <View style={d.watchRow}>
          <Pressable
            onPress={() =>
              detail.tmdbType === "tv" && detail.seasons.length > 0
                ? openEpisodesPage()
                : openWatch(nextUnwatchedEp)
            }
            style={d.watchBtn}
          >
            <Ionicons name="play" size={18} color="#FFFFFF" />
            <Text style={d.watchBtnText}>
              {detail.tmdbType === "tv" ? "الحلقات والسيرفرات" : "مشاهدة الآن (اختر السيرفر)"}
            </Text>
            <View style={d.watchBtnPill}>
              <Ionicons name="layers-outline" size={12} color="#FFFFFF" />
              <Text style={d.watchBtnPillText}>
                {detail.tmdbType === "tv"
                  ? `${seasonEpisodes.length || detail.seasons[0]?.episodeCount || 1} حلقة`
                  : "سيرفرات متعددة"}
              </Text>
            </View>
          </Pressable>
        </View>

        {/* 3-Column Action Grid */}
        <View style={d.actionGrid}>
          {[
            {
              icon: "logo-youtube",
              activeIcon: "logo-youtube",
              label: detail.trailerYoutubeKey ? "الإعلان الدعائي" : "بطاقة العمل",
              active: Boolean(detail.trailerYoutubeKey),
              activeColor: "#EF4444",
              onPress: () => {
                if (detail.trailerYoutubeKey) setShowTrailerModal(true);
                else setShowInfoModal(true);
              },
            },
            {
              icon: "heart-outline",
              activeIcon: "heart",
              label: isFav ? "في المفضلة" : "المفضلة",
              active: isFav,
              activeColor: "#EF4444",
              onPress: () => void handleToggleFavorite(),
            },
            {
              icon: "star-outline",
              activeIcon: "star",
              label: myRating > 0 ? `تقييمي (${myRating}/10)` : "تقييمي",
              active: myRating > 0,
              activeColor: "#FBBF24",
              onPress: () => setShowRatingModal(true),
            },
          ].map((btn) => (
            <Pressable
              key={btn.label}
              onPress={btn.onPress}
              style={[
                d.actionBtn,
                btn.active && {
                  backgroundColor: btn.activeColor + "18",
                  borderColor: btn.activeColor + "45",
                },
              ]}
            >
              <Ionicons
                name={(btn.active ? btn.activeIcon : btn.icon) as any}
                size={17}
                color={btn.active ? btn.activeColor : colors.textPrimary}
              />
              <Text
                style={[d.actionBtnLabel, btn.active && { color: btn.activeColor }]}
                numberOfLines={1}
              >
                {btn.label}
              </Text>
            </Pressable>
          ))}
        </View>

        {/* Cinema Stats Box */}
        <View style={d.statsBox}>
          <View style={d.statsBoxHeader}>
            <Text style={d.statsBoxTitle}>إحصائيات وتقييم العمل</Text>
            <Text style={d.statsBoxBadge}>{detail.categoryLabel}</Text>
          </View>
          <View style={d.statsGrid}>
            <View style={d.statsCell}>
              <View style={{ flexDirection: ROW_RTL, alignItems: "center", gap: 4 }}>
                <Text style={d.statsVal}>{detail.imdbRating.toFixed(1)}</Text>
                <Ionicons name="star" size={14} color="#38BDF8" />
              </View>
              <Text style={d.statsSub}>التقييم العالمي</Text>
            </View>
            <View style={[d.statsCell, d.statsDivider]}>
              <Text style={d.statsVal}>{(detail.voteCount || 0).toLocaleString()}</Text>
              <Text style={d.statsSub}>عدد الأصوات</Text>
            </View>
            <View style={[d.statsCell, d.statsDivider]}>
              <Text style={d.statsVal}>{Math.round(detail.popularity || 100)}</Text>
              <Text style={d.statsSub}>مؤشر الشعبية</Text>
            </View>
          </View>
        </View>

        {/* Segmented Detail Tabs */}
        <View style={d.tabsBar}>
          {[
            { id: "overview", label: "نظرة عامة" },
            {
              id: "episodes",
              label:
                detail.tmdbType === "tv"
                  ? `الحلقات (${seasonEpisodes.length})`
                  : "السيرفرات والمشاهدة",
            },
            { id: "cast", label: `طاقم العمل (${detail.cast.length})` },
            { id: "related", label: `أعمال مشابهة (${detail.recommendations.length})` },
          ].map((item) => {
            const active = tab === item.id;
            return (
              <Pressable
                key={item.id}
                onPress={() => setTab(item.id as any)}
                style={d.tabItem}
              >
                <Text
                  style={[
                    d.tabItemText,
                    { color: active ? "#0EA5E9" : colors.textMuted },
                  ]}
                >
                  {item.label}
                </Text>
                {active ? <View style={d.tabUnderline} /> : null}
              </Pressable>
            );
          })}
        </View>

        {/* TAB 1: Overview */}
        {tab === "overview" ? (
          <View style={d.tabContent}>
            <View style={d.cardPanel}>
              <Text style={d.sectionLabel}>القصة والملخص</Text>
              <Text
                style={d.synopsis}
                numberOfLines={showFullSynopsis ? undefined : 4}
              >
                {detail.overviewAr}
              </Text>
              {detail.overviewAr.length > 140 ? (
                <Pressable
                  onPress={() => setShowFullSynopsis((v) => !v)}
                  style={d.readMoreRow}
                >
                  <Text style={d.readMoreText}>
                    {showFullSynopsis ? "عرض أقل" : "قراءة القصة كاملة"}
                  </Text>
                  <Ionicons
                    name={showFullSynopsis ? "chevron-up" : "chevron-down"}
                    size={15}
                    color="#0EA5E9"
                  />
                </Pressable>
              ) : null}
            </View>

            <ScrollView
              horizontal
              showsHorizontalScrollIndicator={false}
              contentContainerStyle={d.genresStrip}
            >
              {detail.genres.map((g) => (
                <Pressable
                  key={g}
                  onPress={() =>
                    router.push({ pathname: "/(tabs)/browse" as any, params: { genre: g } })
                  }
                  style={d.genreChip}
                >
                  <Text style={d.genreChipText}>{g}</Text>
                </Pressable>
              ))}
            </ScrollView>

            <View style={d.cardPanel}>
              <Text style={d.sectionLabel}>بطاقة العمل</Text>
              <InfoRow label="المخرج / المبدع" value={detail.director} d={d} />
              <InfoRow label="إنتاج" value={detail.productionCompany} d={d} />
              <InfoRow label="التصنيف" value={detail.categoryLabel} d={d} />
              <InfoRow label="المدة / المواسم" value={detail.durationOrSeasons} d={d} />
              <InfoRow label="التصنيف العمري" value={detail.ageRating} d={d} />
            </View>
          </View>
        ) : null}

        {/* TAB 2: Episodes & Seasons */}
        {tab === "episodes" ? (
          <View style={d.tabContent}>
            <View style={d.epHeaderRow}>
              <View>
                <Text style={d.sectionLabel}>
                  {detail.tmdbType === "tv" ? "قائمة الحلقات" : "جاهز للمشاهدة المباشرة"}
                </Text>
                <Text style={d.epSubLabel}>
                  تم مشاهدة {watchedCount} من {Math.max(1, seasonEpisodes.length)}
                </Text>
              </View>
              {detail.tmdbType === "tv" ? (
                <Pressable onPress={openEpisodesPage} style={d.openAllEpsBtn}>
                  <Text style={d.openAllEpsText}>عرض صفحة الحلقات</Text>
                  <Ionicons name="chevron-back" size={14} color="#0EA5E9" />
                </Pressable>
              ) : null}
            </View>

            {detail.seasons.length > 1 ? (
              <ScrollView
                horizontal
                showsHorizontalScrollIndicator={false}
                contentContainerStyle={d.seasonsRow}
              >
                {detail.seasons.map((sItem) => {
                  const active = sItem.seasonNumber === selectedSeason;
                  return (
                    <Pressable
                      key={sItem.seasonNumber}
                      onPress={() => void handleSelectSeason(sItem.seasonNumber)}
                      style={[
                        d.seasonPill,
                        active && { backgroundColor: "#0EA5E9", borderColor: "#0EA5E9" },
                      ]}
                    >
                      <Text
                        style={[
                          d.seasonPillText,
                          active && { color: "#FFFFFF" },
                        ]}
                      >
                        {sItem.name} ({sItem.episodeCount})
                      </Text>
                    </Pressable>
                  );
                })}
              </ScrollView>
            ) : null}

            {seasonLoading ? (
              <View style={{ paddingVertical: 30, alignItems: "center" }}>
                <ActivityIndicator size="small" color="#0EA5E9" />
              </View>
            ) : (
              <View style={{ gap: 9 }}>
                {seasonEpisodes.map((ep) => {
                  const watched = Boolean(
                    watchedMap[makeEpisodeKey(detail.id, ep.seasonNumber, ep.episodeNumber, detail.tmdbType)],
                  );
                  const stillSrc = getImageSource(ep.stillUrl || detail.backdropUrl);
                  return (
                    <Pressable
                      key={ep.id}
                      onPress={() => openWatch(ep)}
                      style={[d.epCard, watched && d.epCardWatched]}
                    >
                      <View style={d.epCardContent}>
                        <View style={d.epThumbWrap}>
                          {stillSrc ? (
                            <Image source={stillSrc} style={d.epThumb} resizeMode="cover" />
                          ) : (
                            <View style={d.epNumBadge}>
                              <Text style={d.epNumText}>{ep.episodeNumber}</Text>
                            </View>
                          )}
                        </View>
                        <View style={{ flex: 1, minWidth: 0, alignItems: ALIGN_RIGHT }}>
                          <Text style={d.epTitle} numberOfLines={1}>
                            {ep.episodeNumber}. {ep.titleAr}
                          </Text>
                          <Text style={d.epMeta} numberOfLines={1}>
                            {ep.runtimeMin} دقيقة{ep.airDate ? ` · ${ep.airDate}` : ""}
                          </Text>
                        </View>
                      </View>
                      <View style={d.epActions}>
                        <Pressable
                          onPress={(e) => {
                            e.stopPropagation();
                            void handleToggleEpWatched(ep);
                          }}
                          style={[d.epCheckBtn, watched && d.epCheckBtnActive]}
                          hitSlop={8}
                        >
                          <Ionicons
                            name={watched ? "checkmark" : "eye-outline"}
                            size={14}
                            color={watched ? "#FFFFFF" : colors.textMuted}
                          />
                        </Pressable>
                        <View style={d.epPlayBtn}>
                          <Ionicons name="play" size={13} color="#FFFFFF" />
                        </View>
                      </View>
                    </Pressable>
                  );
                })}
              </View>
            )}
          </View>
        ) : null}

        {/* TAB 3: Cast */}
        {tab === "cast" ? (
          <View style={d.tabContent}>
            <View style={d.castGrid}>
              {detail.cast.map((member) => {
                const profSrc = getImageSource(member.profileUrl);
                return (
                  <View
                    key={`${member.id}-${member.character}`}
                    style={[d.castCard, { width: (width - 42) / 2 }]}
                  >
                    <View style={d.castHead}>
                      {profSrc ? (
                        <Image source={profSrc} style={d.castAvatarImg} resizeMode="cover" />
                      ) : (
                        <View style={d.castAvatar}>
                          <Ionicons name="person" size={16} color="#38BDF8" />
                        </View>
                      )}
                      <View style={{ flex: 1, minWidth: 0, alignItems: ALIGN_RIGHT }}>
                        <Text style={d.castName} numberOfLines={1}>
                          {member.name}
                        </Text>
                        <Text style={d.castRole} numberOfLines={1}>
                          {member.character}
                        </Text>
                      </View>
                    </View>
                  </View>
                );
              })}
            </View>
          </View>
        ) : null}

        {/* TAB 4: Related Recommendations */}
        {tab === "related" ? (
          <View style={d.tabContent}>
            <View style={d.relatedGrid}>
              {detail.recommendations.map((item) => (
                <FilmPosterCard
                  key={`${item.tmdbType}-${item.id}`}
                  item={item}
                  cardWidth={Math.floor((width - 44) / 2)}
                  tvFocusable={false}
                />
              ))}
            </View>
          </View>
        ) : null}
      </ScrollView>

      {/* YouTube Trailer Modal */}
      <YoutubeTrailerModal
        visible={showTrailerModal}
        videoId={detail.trailerYoutubeKey}
        title={detail.titleAr}
        onClose={() => setShowTrailerModal(false)}
      />

      {/* Fallback Info Modal */}
      <Modal
        visible={showInfoModal}
        transparent
        animationType="fade"
        onRequestClose={() => setShowInfoModal(false)}
      >
        <View style={d.modalBackdrop}>
          <Pressable style={StyleSheet.absoluteFill} onPress={() => setShowInfoModal(false)} />
          <View style={d.modalCard}>
            <View style={d.modalHeader}>
              <Text style={d.modalTitle}>بطاقة العرض — {detail.titleAr}</Text>
              <Pressable onPress={() => setShowInfoModal(false)} style={d.modalClose}>
                <Ionicons name="close" size={18} color={colors.textPrimary} />
              </Pressable>
            </View>
            <Text style={d.modalSub}>
              {detail.titleEn} · {detail.year} · {detail.qualityBadge}
            </Text>
            <Text style={d.modalBody}>{detail.overviewAr}</Text>
            <Pressable
              onPress={() => {
                setShowInfoModal(false);
                openWatch(nextUnwatchedEp);
              }}
              style={d.watchBtn}
            >
              <Ionicons name="play" size={16} color="#FFFFFF" />
              <Text style={d.watchBtnText}>بدء المشاهدة الآن</Text>
            </Pressable>
          </View>
        </View>
      </Modal>

      {/* User Rating Modal */}
      <Modal
        visible={showRatingModal}
        transparent
        animationType="fade"
        onRequestClose={() => setShowRatingModal(false)}
      >
        <View style={d.modalBackdrop}>
          <Pressable style={StyleSheet.absoluteFill} onPress={() => setShowRatingModal(false)} />
          <View style={d.modalCard}>
            <Text style={d.modalTitle}>تقييمك الشخصي لـ {detail.titleAr}</Text>
            <View style={d.ratingStarsRow}>
              {[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((num) => {
                const active = num <= myRating;
                return (
                  <Pressable
                    key={num}
                    onPress={() => void handlePickRating(num)}
                    style={[
                      d.ratingNumBtn,
                      active && { backgroundColor: "#0EA5E9", borderColor: "#0EA5E9" },
                    ]}
                  >
                    <Text style={[d.ratingNumText, active && { color: "#FFFFFF" }]}>
                      {num}
                    </Text>
                  </Pressable>
                );
              })}
            </View>
          </View>
        </View>
      </Modal>
    </View>
  );
}

function InfoRow({
  label,
  value,
  d,
}: {
  label: string;
  value: string;
  d: ReturnType<typeof createDetailStyles>;
}) {
  return (
    <View style={d.infoLine}>
      <Text style={d.infoLabel}>{label}</Text>
      <Text style={d.infoVal} numberOfLines={2}>
        {value}
      </Text>
    </View>
  );
}

function createDetailStyles(colors: ThemePalette) {
  return StyleSheet.create({
    container: { flex: 1, backgroundColor: colors.background },
    centerWrap: {
      flex: 1,
      alignItems: "center",
      justifyContent: "center",
      paddingHorizontal: 32,
      gap: 14,
    },
    loadingText: {
      fontSize: 13.5,
      lineHeight: 21,
      fontFamily: "Cairo_700Bold",
      color: colors.textSecondary,
      textAlign: "center",
    },
    retryBtn: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 8,
      backgroundColor: "#0EA5E9",
      paddingHorizontal: 22,
      paddingVertical: 11,
      borderRadius: 13,
    },
    retryBtnText: {
      color: "#FFFFFF",
      fontSize: 13,
      fontFamily: "Cairo_700Bold",
    },
    topBar: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
      gap: 10,
      paddingHorizontal: 14,
      backgroundColor: colors.surface,
      borderBottomWidth: 1,
      borderBottomColor: colors.border,
    },
    topBarBack: {
      width: 38,
      height: 38,
      borderRadius: 12,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
    },
    topBarTitle: {
      flex: 1,
      textAlign: "right",
      color: colors.textPrimary,
      fontSize: 15,
      lineHeight: 22,
      fontFamily: "Cairo_800ExtraBold",
      includeFontPadding: true,
    },
    topBarStatus: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 6,
      paddingHorizontal: 12,
      paddingVertical: 5,
      borderRadius: 20,
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
    },
    topBarStatusDot: { width: 7, height: 7, borderRadius: 4 },
    topBarStatusText: {
      fontSize: 11,
      lineHeight: 16,
      fontFamily: "Cairo_700Bold",
      color: colors.textPrimary,
      includeFontPadding: true,
    },
    hero: { height: 225, position: "relative", overflow: "hidden", backgroundColor: "#111319" },
    favCircleBtn: {
      position: "absolute",
      left: 16,
      top: 16,
      width: 40,
      height: 40,
      borderRadius: 14,
      backgroundColor: "rgba(9,10,12,0.65)",
      borderWidth: 1,
      borderColor: "rgba(255,255,255,0.2)",
      alignItems: "center",
      justifyContent: "center",
    },
    infoRow: {
      flexDirection: ROW_RTL,
      paddingHorizontal: 16,
      marginTop: -74,
      gap: 14,
      alignItems: "flex-end",
    },
    cover: {
      width: 112,
      height: 164,
      borderRadius: 16,
      borderWidth: 2,
      borderColor: "rgba(255,255,255,0.20)",
      backgroundColor: "#14171C",
    },
    infoText: { flex: 1, paddingBottom: 4, gap: 5, alignItems: ALIGN_RIGHT },
    titleMain: {
      fontSize: 20,
      lineHeight: 29,
      fontFamily: "Cairo_800ExtraBold",
      color: colors.textPrimary,
      textAlign: "right",
      includeFontPadding: true,
    },
    titleSubEn: {
      fontSize: 12,
      lineHeight: 18,
      fontFamily: "Cairo_600SemiBold",
      color: colors.textSecondary,
      textAlign: "right",
    },
    badgeRow: { flexDirection: ROW_RTL, flexWrap: "wrap", gap: 6, marginTop: 2 },
    badge: {
      borderRadius: 10,
      paddingHorizontal: 10,
      paddingVertical: 4,
      borderWidth: 1,
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 4,
    },
    badgeScore: {
      backgroundColor: "rgba(15,23,42,0.88)",
      borderColor: "rgba(251,191,36,0.4)",
    },
    badgeScoreText: {
      fontSize: 11,
      fontFamily: "Cairo_800ExtraBold",
      color: "#FBBF24",
    },
    badgePrimary: {
      backgroundColor: colors.accentSurface,
      borderColor: colors.accentBorder,
    },
    badgePrimaryText: {
      fontSize: 11,
      lineHeight: 16,
      fontFamily: "Cairo_700Bold",
      color: colors.accent,
      includeFontPadding: true,
    },
    badgeDefault: {
      backgroundColor: colors.surfaceElevated,
      borderColor: colors.border,
    },
    badgeDefaultText: {
      fontSize: 11,
      lineHeight: 16,
      fontFamily: "Cairo_700Bold",
      color: colors.textPrimary,
      includeFontPadding: true,
    },
    statsRow: { flexDirection: ROW_RTL, flexWrap: "wrap", gap: 10, marginTop: 2 },
    statItem: { flexDirection: ROW_RTL, alignItems: "center", gap: 4 },
    statText: { fontSize: 11, fontFamily: "Cairo_600SemiBold", color: colors.textSecondary },
    watchRow: { paddingHorizontal: 16, marginTop: 16 },
    watchBtn: {
      minHeight: 50,
      backgroundColor: "#0EA5E9",
      borderRadius: 15,
      paddingHorizontal: 16,
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "center",
      gap: 9,
    },
    watchBtnText: {
      color: "#FFFFFF",
      fontSize: 14,
      lineHeight: 21,
      fontFamily: "Cairo_800ExtraBold",
      includeFontPadding: true,
    },
    watchBtnPill: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 4,
      backgroundColor: "rgba(0,0,0,0.22)",
      paddingHorizontal: 10,
      paddingVertical: 3,
      borderRadius: 9,
    },
    watchBtnPillText: {
      color: "#FFFFFF",
      fontSize: 11,
      fontFamily: "Cairo_700Bold",
      includeFontPadding: true,
    },
    actionGrid: {
      flexDirection: ROW_RTL,
      gap: 9,
      paddingHorizontal: 16,
      marginTop: 12,
    },
    actionBtn: {
      flex: 1,
      minHeight: 48,
      borderRadius: 13,
      borderWidth: 1,
      borderColor: colors.border,
      backgroundColor: colors.card,
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "center",
      gap: 6,
      paddingHorizontal: 8,
    },
    actionBtnLabel: {
      fontSize: 11.5,
      lineHeight: 17,
      fontFamily: "Cairo_700Bold",
      color: colors.textPrimary,
      includeFontPadding: true,
    },
    statsBox: {
      marginHorizontal: 16,
      marginTop: 14,
      borderRadius: 16,
      borderWidth: 1,
      borderColor: colors.border,
      backgroundColor: colors.card,
      padding: 14,
      gap: 12,
    },
    statsBoxHeader: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
    },
    statsBoxTitle: {
      fontSize: 13,
      lineHeight: 19,
      fontFamily: "Cairo_800ExtraBold",
      color: colors.textPrimary,
      includeFontPadding: true,
    },
    statsBoxBadge: {
      fontSize: 11,
      fontFamily: "Cairo_800ExtraBold",
      color: "#0EA5E9",
      backgroundColor: colors.accentSurface,
      paddingHorizontal: 10,
      paddingVertical: 3,
      borderRadius: 8,
    },
    statsGrid: { flexDirection: ROW_RTL, alignItems: "center" },
    statsCell: { flex: 1, alignItems: "center", gap: 3 },
    statsDivider: { borderRightWidth: StyleSheet.hairlineWidth, borderRightColor: colors.border },
    statsVal: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
    statsSub: { fontSize: 10.5, fontFamily: "Cairo_400Regular", color: colors.textMuted },
    tabsBar: {
      flexDirection: ROW_RTL,
      marginTop: 16,
      paddingHorizontal: 12,
      borderBottomWidth: StyleSheet.hairlineWidth,
      borderBottomColor: colors.border,
      justifyContent: "space-around",
    },
    tabItem: {
      minHeight: 44,
      justifyContent: "center",
      alignItems: "center",
      paddingHorizontal: 6,
      position: "relative",
    },
    tabItemText: {
      fontSize: 12,
      lineHeight: 18,
      fontFamily: "Cairo_700Bold",
      includeFontPadding: true,
    },
    tabUnderline: {
      position: "absolute",
      bottom: 0,
      left: 0,
      right: 0,
      height: 3,
      backgroundColor: "#0EA5E9",
      borderTopLeftRadius: 3,
      borderTopRightRadius: 3,
    },
    tabContent: { padding: 16, gap: 14 },
    cardPanel: {
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
      borderRadius: 16,
      padding: 14,
      gap: 10,
    },
    sectionLabel: {
      fontSize: 14,
      lineHeight: 21,
      fontFamily: "Cairo_800ExtraBold",
      color: colors.textPrimary,
      textAlign: "right",
      includeFontPadding: true,
    },
    synopsis: {
      fontSize: 13.5,
      lineHeight: 23,
      fontFamily: "Cairo_400Regular",
      color: colors.textSecondary,
      textAlign: "right",
      includeFontPadding: true,
    },
    readMoreRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 5 },
    readMoreText: { fontSize: 12.5, fontFamily: "Cairo_700Bold", color: "#0EA5E9" },
    genresStrip: { flexDirection: ROW_RTL, gap: 8, paddingVertical: 4 },
    genreChip: {
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
      paddingHorizontal: 14,
      paddingVertical: 7,
      borderRadius: 12,
    },
    genreChipText: {
      fontSize: 12,
      lineHeight: 18,
      fontFamily: "Cairo_700Bold",
      color: colors.textPrimary,
      includeFontPadding: true,
    },
    infoLine: {
      flexDirection: ROW_RTL,
      justifyContent: "space-between",
      alignItems: "center",
      paddingVertical: 4,
      borderBottomWidth: StyleSheet.hairlineWidth,
      borderBottomColor: colors.border,
      gap: 12,
    },
    infoLabel: { fontSize: 12, fontFamily: "Cairo_600SemiBold", color: colors.textMuted },
    infoVal: {
      fontSize: 12.5,
      fontFamily: "Cairo_700Bold",
      color: colors.textPrimary,
      flex: 1,
      textAlign: "left",
    },
    epHeaderRow: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
    },
    epSubLabel: { fontSize: 11.5, fontFamily: "Cairo_400Regular", color: colors.textMuted, textAlign: "right" },
    openAllEpsBtn: { flexDirection: ROW_RTL, alignItems: "center", gap: 3 },
    openAllEpsText: {
      fontSize: 12.5,
      lineHeight: 18,
      fontFamily: "Cairo_700Bold",
      color: "#0EA5E9",
      includeFontPadding: true,
    },
    seasonsRow: { flexDirection: ROW_RTL, gap: 8, paddingVertical: 4 },
    seasonPill: {
      paddingHorizontal: 14,
      paddingVertical: 7,
      borderRadius: 11,
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
    },
    seasonPillText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: colors.textPrimary },
    epCard: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
      padding: 10,
      borderRadius: 14,
      borderWidth: 1,
      borderColor: colors.border,
      backgroundColor: colors.card,
      gap: 10,
    },
    epCardWatched: {
      borderColor: "rgba(16,185,129,0.45)",
      backgroundColor: "rgba(16,185,129,0.06)",
    },
    epCardContent: { flex: 1, flexDirection: ROW_RTL, alignItems: "center", gap: 10 },
    epThumbWrap: {
      width: 82,
      height: 52,
      borderRadius: 10,
      overflow: "hidden",
      backgroundColor: colors.surfaceElevated,
      alignItems: "center",
      justifyContent: "center",
    },
    epThumb: { width: "100%", height: "100%" },
    epNumBadge: {
      width: 38,
      height: 38,
      borderRadius: 11,
      backgroundColor: colors.accentSurface,
      alignItems: "center",
      justifyContent: "center",
    },
    epNumText: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: colors.accent },
    epTitle: {
      fontSize: 13,
      lineHeight: 19,
      fontFamily: "Cairo_700Bold",
      color: colors.textPrimary,
      textAlign: "right",
      includeFontPadding: true,
    },
    epMeta: { fontSize: 11, fontFamily: "Cairo_400Regular", color: colors.textMuted, textAlign: "right" },
    epActions: { flexDirection: ROW_RTL, alignItems: "center", gap: 8 },
    epCheckBtn: {
      width: 32,
      height: 32,
      borderRadius: 10,
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
      alignItems: "center",
      justifyContent: "center",
    },
    epCheckBtnActive: { backgroundColor: "#10B981", borderColor: "#10B981" },
    epPlayBtn: {
      width: 34,
      height: 34,
      borderRadius: 11,
      backgroundColor: "#0EA5E9",
      alignItems: "center",
      justifyContent: "center",
    },
    castGrid: { flexDirection: ROW_RTL, flexWrap: "wrap", gap: 10 },
    castCard: {
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
      borderRadius: 14,
      padding: 10,
    },
    castHead: { flexDirection: ROW_RTL, alignItems: "center", gap: 9 },
    castAvatar: {
      width: 38,
      height: 38,
      borderRadius: 19,
      backgroundColor: colors.accentSurface,
      alignItems: "center",
      justifyContent: "center",
    },
    castAvatarImg: {
      width: 38,
      height: 38,
      borderRadius: 19,
      backgroundColor: colors.surfaceElevated,
    },
    castName: {
      fontSize: 12,
      lineHeight: 18,
      fontFamily: "Cairo_700Bold",
      color: colors.textPrimary,
      textAlign: "right",
      includeFontPadding: true,
    },
    castRole: { fontSize: 10.5, fontFamily: "Cairo_400Regular", color: colors.textMuted, textAlign: "right" },
    relatedGrid: { flexDirection: ROW_RTL, flexWrap: "wrap", gap: 12 },
    modalBackdrop: {
      flex: 1,
      backgroundColor: "rgba(0,0,0,0.72)",
      justifyContent: "center",
      alignItems: "center",
      padding: 20,
    },
    modalCard: {
      width: "100%",
      maxWidth: 420,
      backgroundColor: colors.surface,
      borderWidth: 1,
      borderColor: colors.border,
      borderRadius: 20,
      padding: 18,
      gap: 12,
    },
    modalHeader: { flexDirection: ROW_RTL, alignItems: "center", justifyContent: "space-between" },
    modalTitle: {
      fontSize: 15,
      lineHeight: 22,
      fontFamily: "Cairo_800ExtraBold",
      color: colors.textPrimary,
      textAlign: "right",
      flex: 1,
      includeFontPadding: true,
    },
    modalClose: {
      width: 32,
      height: 32,
      borderRadius: 10,
      backgroundColor: colors.surfaceElevated,
      alignItems: "center",
      justifyContent: "center",
    },
    modalSub: { fontSize: 12, fontFamily: "Cairo_600SemiBold", color: "#0EA5E9", textAlign: "right" },
    modalBody: {
      fontSize: 13.5,
      lineHeight: 22,
      fontFamily: "Cairo_400Regular",
      color: colors.textSecondary,
      textAlign: "right",
    },
    ratingStarsRow: { flexDirection: ROW_RTL, flexWrap: "wrap", gap: 8, justifyContent: "center" },
    ratingNumBtn: {
      width: 44,
      height: 44,
      borderRadius: 12,
      borderWidth: 1,
      borderColor: colors.border,
      backgroundColor: colors.card,
      alignItems: "center",
      justifyContent: "center",
    },
    ratingNumText: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
  });
}
