import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useFocusEffect, useLocalSearchParams, useRouter } from "expo-router";
import React, { useCallback, useMemo, useState } from "react";
import {
  I18nManager,
  Image,
  Modal,
  Platform,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import type { ThemePalette } from "@/constants/colors";
import { useColors } from "@/hooks/useColors";
import {
  NOVA_FILM_CATALOG,
  loadFavoriteFilmIds,
  loadFilmRating,
  loadWatchedMap,
  makeEpisodeKey,
  saveFavoriteFilmIds,
  saveFilmRating,
  saveWatchedMap,
  type FilmEpisode,
} from "@/utils/filmCatalog";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

export default function FilmDetailScreen() {
  const { id } = useLocalSearchParams<{ id: string }>();
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const d = useMemo(() => createDetailStyles(colors), [colors]);

  const title = useMemo(
    () => NOVA_FILM_CATALOG.find((t) => String(t.id) === String(id)) || NOVA_FILM_CATALOG[0],
    [id],
  );

  const [tab, setTab] = useState<"overview" | "episodes" | "cast" | "related">("overview");
  const [selectedSeason, setSelectedSeason] = useState<number>(1);
  const [showFullSynopsis, setShowFullSynopsis] = useState(false);
  const [isFav, setIsFav] = useState(false);
  const [myRating, setMyRating] = useState(0);
  const [showRatingModal, setShowRatingModal] = useState(false);
  const [showPreviewModal, setShowPreviewModal] = useState(false);
  const [watchedMap, setWatchedMap] = useState<Record<string, boolean>>({});

  useFocusEffect(
    useCallback(() => {
      Promise.all([
        loadWatchedMap(),
        loadFavoriteFilmIds(),
        loadFilmRating(title.id),
      ]).then(([w, favs, rating]) => {
        setWatchedMap(w);
        setIsFav(favs.includes(title.id));
        setMyRating(rating);
      });
    }, [title.id]),
  );

  const toggleFavorite = async () => {
    const existing = await loadFavoriteFilmIds();
    const next = existing.includes(title.id)
      ? existing.filter((x) => x !== title.id)
      : [title.id, ...existing];
    setIsFav(next.includes(title.id));
    await saveFavoriteFilmIds(next);
  };

  const submitRating = async (score: number) => {
    setMyRating(score);
    setShowRatingModal(false);
    await saveFilmRating(title.id, score);
  };

  const toggleEpisodeWatched = async (ep: FilmEpisode) => {
    const k = makeEpisodeKey(title.id, ep.seasonNumber, ep.episodeNumber);
    const next = { ...watchedMap };
    if (next[k]) delete next[k];
    else next[k] = true;
    setWatchedMap(next);
    await saveWatchedMap(next);
  };

  const seasonsList = useMemo(() => {
    const nums = Array.from(new Set(title.episodes.map((e) => e.seasonNumber)));
    return nums.sort((a, b) => a - b);
  }, [title]);

  const seasonEpisodes = useMemo(
    () => title.episodes.filter((ep) => ep.seasonNumber === selectedSeason),
    [title, selectedSeason],
  );

  const watchedCount = useMemo(
    () =>
      title.episodes.filter(
        (ep) => watchedMap[makeEpisodeKey(title.id, ep.seasonNumber, ep.episodeNumber)],
      ).length,
    [title, watchedMap],
  );

  const nextUnwatchedEp = useMemo(
    () =>
      title.episodes.find(
        (ep) => !watchedMap[makeEpisodeKey(title.id, ep.seasonNumber, ep.episodeNumber)],
      ) || title.episodes[0],
    [title, watchedMap],
  );

  const relatedTitles = useMemo(() => {
    const ids = title.relatedIds || [];
    const matched = NOVA_FILM_CATALOG.filter((item) => item.id !== title.id && ids.includes(item.id));
    if (matched.length > 0) return matched;
    return NOVA_FILM_CATALOG.filter((item) => item.id !== title.id && item.mediaType === title.mediaType).slice(0, 4);
  }, [title]);

  const openWatch = (ep: FilmEpisode) => {
    router.push({
      pathname: "/film/watch" as any,
      params: {
        titleId: String(title.id),
        season: String(ep.seasonNumber),
        episode: String(ep.episodeNumber),
      },
    });
  };

  const openEpisodesPage = () => {
    router.push({
      pathname: "/film/episodes/[id]" as any,
      params: { id: String(title.id) },
    });
  };

  const topPad = Platform.OS === "web" ? 10 : Math.max(insets.top, Platform.OS === "android" ? 24 : 44);

  return (
    <View style={d.container}>
      {/* Top Bar matching Anime NOVA */}
      <View style={[d.topBar, { paddingTop: topPad, height: topPad + 54 }]}>
        <Pressable
          onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)" as any))}
          style={d.topBarBack}
        >
          <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
        </Pressable>

        <Text style={d.topBarTitle} numberOfLines={1}>
          {title.titleAr}
        </Text>

        <View style={d.topBarStatus}>
          <View
            style={[
              d.topBarStatusDot,
              {
                backgroundColor:
                  title.statusLabel === "مستمر"
                    ? "#10B981"
                    : title.statusLabel === "عرض حصري"
                      ? "#0EA5E9"
                      : "#8B5CF6",
              },
            ]}
          />
          <Text style={d.topBarStatusText}>{title.statusLabel}</Text>
        </View>
      </View>

      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={{ paddingBottom: 48 }}>
        {/* Banner Hero */}
        <View style={d.hero}>
          <Image
            source={title.backdropSource || title.posterSource}
            style={StyleSheet.absoluteFill}
            resizeMode="cover"
          />
          <LinearGradient
            colors={["rgba(9,10,12,0.22)", "rgba(9,10,12,0.58)", colors.background]}
            style={StyleSheet.absoluteFill}
          />
          <Pressable onPress={toggleFavorite} style={d.favCircleBtn}>
            <Ionicons
              name={isFav ? "heart" : "heart-outline"}
              size={20}
              color={isFav ? "#EF4444" : "#FFFFFF"}
            />
          </Pressable>
        </View>

        {/* Overlapping Poster & Primary Title Info */}
        <View style={d.infoRow}>
          <Image source={title.posterSource} style={d.cover} resizeMode="cover" />

          <View style={d.infoText}>
            <Text style={d.titleMain}>{title.titleAr}</Text>
            <Text style={d.titleSubEn} numberOfLines={1}>
              {title.titleEn}
            </Text>

            <View style={d.badgeRow}>
              <View style={[d.badge, d.badgeScore]}>
                <Ionicons name="star" size={11} color="#FBBF24" />
                <Text style={d.badgeScoreText}>{title.imdbRating.toFixed(1)}</Text>
              </View>
              <View style={[d.badge, d.badgePrimary]}>
                <Text style={d.badgePrimaryText}>{title.qualityBadge}</Text>
              </View>
              <View style={[d.badge, d.badgeDefault]}>
                <Text style={d.badgeDefaultText}>{title.audioLabel}</Text>
              </View>
            </View>

            <View style={d.statsRow}>
              <View style={d.statItem}>
                <Ionicons name="calendar-outline" size={12} color={colors.textSecondary} />
                <Text style={d.statText}>{title.year}</Text>
              </View>
              <View style={d.statItem}>
                <Ionicons name="time-outline" size={12} color={colors.textSecondary} />
                <Text style={d.statText}>{title.durationOrSeasons}</Text>
              </View>
              <View style={d.statItem}>
                <Ionicons name="shield-checkmark-outline" size={12} color={colors.textSecondary} />
                <Text style={d.statText}>{title.ageRating}</Text>
              </View>
            </View>
          </View>
        </View>

        {/* Primary Action CTA Row matching Anime NOVA */}
        <View style={d.watchRow}>
          <Pressable
            onPress={() =>
              title.episodes.length > 1 ? openEpisodesPage() : nextUnwatchedEp && openWatch(nextUnwatchedEp)
            }
            style={d.watchBtn}
          >
            <Ionicons name="play" size={18} color="#FFFFFF" />
            <Text style={d.watchBtnText}>
              {title.episodes.length > 1 ? "الحلقات والسيرفرات" : "مشاهدة الآن (اختر السيرفر)"}
            </Text>
            <View style={d.watchBtnPill}>
              <Ionicons name="layers-outline" size={12} color="#FFFFFF" />
              <Text style={d.watchBtnPillText}>
                {title.episodes.length > 1
                  ? `${title.episodes.length} حلقة`
                  : `${title.episodes[0]?.servers.length || 5} سيرفر`}
              </Text>
            </View>
          </Pressable>
        </View>

        {/* 3-Column Action Grid (Trailer / Favorite / Rating — exact Anime NOVA layout) */}
        <View style={d.actionGrid}>
          {[
            {
              icon: "videocam-outline",
              activeIcon: "videocam",
              label: "معلومات العرض",
              active: false,
              activeColor: "#38BDF8",
              onPress: () => setShowPreviewModal(true),
            },
            {
              icon: "heart-outline",
              activeIcon: "heart",
              label: isFav ? "في المفضلة" : "المفضلة",
              active: isFav,
              activeColor: "#EF4444",
              onPress: toggleFavorite,
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

        {/* Global Cinema Stats Box (modeled on Anime NOVA's malBox) */}
        <View style={d.statsBox}>
          <View style={d.statsBoxHeader}>
            <Text style={d.statsBoxTitle}>إحصائيات وتقييم العمل</Text>
            <Text style={d.statsBoxBadge}>NOVA FILM #{title.globalRank || 1}</Text>
          </View>
          <View style={d.statsGrid}>
            <View style={d.statsCell}>
              <View style={{ flexDirection: ROW_RTL, alignItems: "center", gap: 4 }}>
                <Text style={d.statsVal}>{title.imdbRating.toFixed(1)}</Text>
                <Ionicons name="star" size={14} color="#38BDF8" />
              </View>
              <Text style={d.statsSub}>التقييم العام</Text>
            </View>
            <View style={[d.statsCell, d.statsDivider]}>
              <Text style={d.statsVal}>#{title.globalRank || 1}</Text>
              <Text style={d.statsSub}>الترتيب في المنصة</Text>
            </View>
            <View style={[d.statsCell, d.statsDivider]}>
              <Text style={d.statsVal}>
                {(title.popularityCount || 48000).toLocaleString()}
              </Text>
              <Text style={d.statsSub}>في قوائم المتابعة</Text>
            </View>
          </View>
        </View>

        {/* Segmented Detail Tabs */}
        <View style={d.tabsBar}>
          {[
            { id: "overview", label: "نظرة عامة" },
            { id: "episodes", label: `الحلقات (${title.episodes.length})` },
            { id: "cast", label: "طاقم العمل" },
            { id: "related", label: "أعمال مشابهة" },
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
          <View style={d.tabBody}>
            <View style={d.sectionHeadingRow}>
              <View style={d.sectionAccent} />
              <Text style={d.sectionHeadingText}>القصة والملخص</Text>
            </View>

            <Pressable
              onPress={() => setShowFullSynopsis((v) => !v)}
              style={d.descCard}
            >
              <Text
                style={d.descText}
                numberOfLines={showFullSynopsis ? undefined : 4}
              >
                {title.synopsis}
              </Text>
              {title.synopsis.length > 110 ? (
                <View style={d.readMoreRow}>
                  <Ionicons
                    name={showFullSynopsis ? "chevron-up" : "chevron-down"}
                    size={15}
                    color={colors.textSecondary}
                  />
                  <Text style={d.readMoreText}>
                    {showFullSynopsis ? "عرض أقل" : "قراءة القصة كاملة"}
                  </Text>
                </View>
              ) : null}
            </Pressable>

            <ScrollView
              horizontal
              showsHorizontalScrollIndicator={false}
              contentContainerStyle={d.genresStrip}
            >
              {title.genres.map((g) => (
                <View key={g} style={d.genreChip}>
                  <Text style={d.genreChipText}>{g}</Text>
                </View>
              ))}
            </ScrollView>

            <View style={d.sectionHeadingRow}>
              <View style={d.sectionAccent} />
              <Text style={d.sectionHeadingText}>معلومات الإنتاج</Text>
            </View>

            <View style={d.metaGrid}>
              <MetaCard label="الاستوديو المنتج" value={title.studio} badge colors={colors} />
              <MetaCard label="المخرج" value={title.director} colors={colors} />
              <MetaCard label="بلد الإنتاج" value={title.country} colors={colors} />
              <MetaCard label="التصنيف العمرى" value={title.ageRating} colors={colors} />
              <MetaCard label="الجودة المتوفرة" value={title.qualityBadge} colors={colors} />
              <MetaCard label="اللغة والترجمة" value={title.audioLabel} colors={colors} />
              <MetaCard label="الاسم الإنجليزي" value={title.titleEn} wide colors={colors} />
            </View>
          </View>
        ) : null}

        {/* TAB 2: Episodes & Seasons Preview + Jump to Dedicated Screen */}
        {tab === "episodes" ? (
          <View style={d.tabBody}>
            <View style={d.progressCard}>
              <View style={d.progressHeader}>
                <Pressable onPress={openEpisodesPage} style={d.openAllEpsBtn}>
                  <Text style={d.openAllEpsText}>عرض صفحة الحلقات الكاملة</Text>
                  <Ionicons name="chevron-back" size={14} color="#0EA5E9" />
                </Pressable>
                <Text style={d.progressLabel}>
                  تمت مشاهدة {watchedCount} من {title.episodes.length}
                </Text>
              </View>
              <View style={d.progressTrack}>
                <View
                  style={[
                    d.progressFill,
                    {
                      width: `${Math.round(
                        (watchedCount / Math.max(1, title.episodes.length)) * 100,
                      )}%`,
                    },
                  ]}
                />
              </View>
            </View>

            {seasonsList.length > 1 ? (
              <ScrollView
                horizontal
                showsHorizontalScrollIndicator={false}
                contentContainerStyle={d.seasonsRow}
              >
                {seasonsList.map((sNum) => {
                  const active = sNum === selectedSeason;
                  return (
                    <Pressable
                      key={sNum}
                      onPress={() => setSelectedSeason(sNum)}
                      style={[
                        d.seasonPill,
                        active && { backgroundColor: "#0EA5E9", borderColor: "#0EA5E9" },
                      ]}
                    >
                      <Text style={[d.seasonPillText, active && { color: "#FFFFFF" }]}>
                        {title.seasonLabels?.[sNum] || `الموسم ${sNum}`}
                      </Text>
                    </Pressable>
                  );
                })}
              </ScrollView>
            ) : null}

            <View style={{ gap: 10 }}>
              {seasonEpisodes.map((ep) => {
                const watched = Boolean(
                  watchedMap[makeEpisodeKey(title.id, ep.seasonNumber, ep.episodeNumber)],
                );
                return (
                  <View
                    key={ep.id}
                    style={[
                      d.epCard,
                      watched && {
                        borderColor: "rgba(16,185,129,0.45)",
                        backgroundColor: "rgba(16,185,129,0.06)",
                      },
                    ]}
                  >
                    <Pressable onPress={() => toggleEpisodeWatched(ep)} style={d.eyeBtn}>
                      <Ionicons
                        name={watched ? "eye" : "eye-outline"}
                        size={18}
                        color={watched ? "#10B981" : colors.textMuted}
                      />
                    </Pressable>

                    <Pressable onPress={() => openWatch(ep)} style={d.epCardContent}>
                      <View style={{ flex: 1, alignItems: "flex-end", gap: 3 }}>
                        <Text style={d.epCardTitle} numberOfLines={1}>
                          {ep.titleAr}
                        </Text>
                        <Text style={d.epCardSub} numberOfLines={1}>
                          {ep.titleEn} · {ep.durationMinutes} دقيقة · {ep.servers.length} سيرفر
                        </Text>
                      </View>
                      <View style={d.epPlayCircle}>
                        <Ionicons name="play" size={15} color="#FFFFFF" />
                      </View>
                    </Pressable>
                  </View>
                );
              })}
            </View>
          </View>
        ) : null}

        {/* TAB 3: Cast & Crew */}
        {tab === "cast" ? (
          <View style={d.tabBody}>
            <View style={d.sectionHeadingRow}>
              <View style={d.sectionAccent} />
              <Text style={d.sectionHeadingText}>النجوم وطاقم التمثيل والإخراج</Text>
            </View>
            <View style={d.castGrid}>
              {(title.cast || []).map((member) => (
                <View key={member.id} style={d.castCard}>
                  <View
                    style={[
                      d.castAvatar,
                      {
                        backgroundColor: member.accentColor + "22",
                        borderColor: member.accentColor + "55",
                      },
                    ]}
                  >
                    <Text style={[d.castInitials, { color: member.accentColor }]}>
                      {member.initials}
                    </Text>
                  </View>
                  <Text style={d.castNameAr} numberOfLines={1}>
                    {member.nameAr}
                  </Text>
                  <Text style={d.castNameEn} numberOfLines={1}>
                    {member.nameEn}
                  </Text>
                  <Text style={d.castRole} numberOfLines={2}>
                    {member.roleAr}
                  </Text>
                </View>
              ))}
            </View>
          </View>
        ) : null}

        {/* TAB 4: Related Titles */}
        {tab === "related" ? (
          <View style={d.tabBody}>
            <View style={d.sectionHeadingRow}>
              <View style={d.sectionAccent} />
              <Text style={d.sectionHeadingText}>أعمال قد تعجبك أيضاً</Text>
            </View>
            <ScrollView
              horizontal
              showsHorizontalScrollIndicator={false}
              contentContainerStyle={{ gap: 12 }}
            >
              {relatedTitles.map((rel) => (
                <Pressable
                  key={rel.id}
                  onPress={() =>
                    router.push({
                      pathname: "/film/[id]" as any,
                      params: { id: String(rel.id) },
                    })
                  }
                  style={d.relCard}
                >
                  <View style={d.relPosterWrap}>
                    <Image source={rel.posterSource} style={d.relPoster} resizeMode="cover" />
                    <View style={d.relScore}>
                      <Ionicons name="star" size={9} color="#FBBF24" />
                      <Text style={d.relScoreText}>{rel.imdbRating.toFixed(1)}</Text>
                    </View>
                  </View>
                  <Text style={d.relTitle} numberOfLines={2}>
                    {rel.titleAr}
                  </Text>
                  <Text style={d.relSub} numberOfLines={1}>
                    {rel.categoryLabel} · {rel.year}
                  </Text>
                </Pressable>
              ))}
            </ScrollView>
          </View>
        ) : null}
      </ScrollView>

      {/* 1-10 Rating Sheet Modal matching Anime NOVA */}
      <Modal
        visible={showRatingModal}
        animationType="slide"
        transparent
        onRequestClose={() => setShowRatingModal(false)}
      >
        <View style={d.modalOverlay}>
          <Pressable style={StyleSheet.absoluteFill} onPress={() => setShowRatingModal(false)} />
          <View style={d.ratingSheet}>
            <Text style={d.ratingTitle}>أضف تقييمك للعمل</Text>
            <Text style={d.ratingSub}>اختر درجة تقييمك من 1 إلى 10</Text>
            <View style={d.ratingGrid}>
              {Array.from({ length: 10 }, (_, i) => i + 1).map((n) => {
                const active = n <= myRating;
                return (
                  <Pressable
                    key={n}
                    onPress={() => submitRating(n)}
                    style={[d.ratingNum, active && d.ratingNumActive]}
                  >
                    <Text style={[d.ratingNumText, active && d.ratingNumTextActive]}>{n}</Text>
                  </Pressable>
                );
              })}
            </View>
            {myRating > 0 ? (
              <Pressable onPress={() => submitRating(0)} style={{ marginTop: 10 }}>
                <Text style={{ color: colors.destructive, fontSize: 12, fontFamily: "Cairo_700Bold" }}>
                  حذف التقييم
                </Text>
              </Pressable>
            ) : null}
          </View>
        </View>
      </Modal>

      {/* Preview / Info Sheet Modal */}
      <Modal
        visible={showPreviewModal}
        animationType="fade"
        transparent
        onRequestClose={() => setShowPreviewModal(false)}
      >
        <View style={d.modalOverlay}>
          <Pressable style={StyleSheet.absoluteFill} onPress={() => setShowPreviewModal(false)} />
          <View style={d.previewCard}>
            <Image
              source={title.backdropSource || title.posterSource}
              style={d.previewImg}
              resizeMode="cover"
            />
            <View style={{ padding: 16, gap: 8 }}>
              <Text style={d.ratingTitle}>{title.titleAr}</Text>
              <Text style={[d.descText, { fontSize: 12.5 }]}>{title.synopsis}</Text>
              <Pressable
                onPress={() => {
                  setShowPreviewModal(false);
                  if (nextUnwatchedEp) openWatch(nextUnwatchedEp);
                }}
                style={[d.watchBtn, { marginTop: 6 }]}
              >
                <Ionicons name="play" size={16} color="#FFFFFF" />
                <Text style={d.watchBtnText}>انتقل إلى صفحة السيرفرات والمشاهدة</Text>
              </Pressable>
            </View>
          </View>
        </View>
      </Modal>
    </View>
  );
}

function MetaCard({
  label,
  value,
  badge,
  wide,
  colors,
}: {
  label: string;
  value: string;
  badge?: boolean;
  wide?: boolean;
  colors: ThemePalette;
}) {
  return (
    <View
      style={{
        width: wide ? "100%" : "48.5%",
        backgroundColor: colors.card,
        borderWidth: 1,
        borderColor: colors.border,
        borderRadius: 13,
        padding: 12,
        alignItems: "flex-end",
        gap: 4,
      }}
    >
      <Text
        style={{
          fontSize: 11,
          lineHeight: 16,
          fontFamily: "Cairo_600SemiBold",
          color: colors.textMuted,
        }}
      >
        {label}
      </Text>
      <Text
        style={{
          fontSize: 13,
          lineHeight: 19,
          fontFamily: "Cairo_700Bold",
          color: badge ? "#0EA5E9" : colors.textPrimary,
          textAlign: "right",
        }}
      >
        {value}
      </Text>
    </View>
  );
}

function createDetailStyles(colors: ThemePalette) {
  return StyleSheet.create({
    container: { flex: 1, backgroundColor: colors.background },
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
    hero: { height: 225, position: "relative", overflow: "hidden" },
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
    infoText: { flex: 1, paddingBottom: 4, gap: 5, alignItems: "flex-end" },
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
      flexDirection: "row",
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
      paddingHorizontal: 6,
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
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
      borderRadius: 16,
      padding: 14,
      gap: 10,
    },
    statsBoxHeader: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
    },
    statsBoxTitle: {
      fontSize: 13,
      fontFamily: "Cairo_800ExtraBold",
      color: colors.textPrimary,
      includeFontPadding: true,
    },
    statsBoxBadge: {
      fontSize: 11,
      fontFamily: "Cairo_700Bold",
      color: "#0EA5E9",
    },
    statsGrid: { flexDirection: ROW_RTL, alignItems: "center" },
    statsCell: { flex: 1, alignItems: "center", gap: 2 },
    statsDivider: { borderRightWidth: 1, borderRightColor: colors.border },
    statsVal: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
    statsSub: { fontSize: 10.5, fontFamily: "Cairo_400Regular", color: colors.textMuted },
    tabsBar: {
      flexDirection: ROW_RTL,
      marginTop: 18,
      borderBottomWidth: 1,
      borderBottomColor: colors.border,
      paddingHorizontal: 12,
      justifyContent: "space-around",
    },
    tabItem: {
      minHeight: 44,
      justifyContent: "center",
      alignItems: "center",
      paddingHorizontal: 8,
      position: "relative",
    },
    tabItemText: {
      fontSize: 12.5,
      lineHeight: 19,
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
    tabBody: { paddingHorizontal: 16, paddingTop: 16, gap: 12 },
    sectionHeadingRow: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 8,
    },
    sectionAccent: { width: 3.5, height: 18, borderRadius: 2, backgroundColor: "#0EA5E9" },
    sectionHeadingText: {
      fontSize: 15,
      lineHeight: 23,
      fontFamily: "Cairo_800ExtraBold",
      color: colors.textPrimary,
      includeFontPadding: true,
    },
    descCard: {
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
      borderRadius: 15,
      padding: 14,
      gap: 8,
    },
    descText: {
      fontSize: 13.5,
      lineHeight: 23,
      fontFamily: "Cairo_400Regular",
      color: colors.textSecondary,
      textAlign: "right",
      includeFontPadding: true,
    },
    readMoreRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 5 },
    readMoreText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "#0EA5E9" },
    genresStrip: { flexDirection: ROW_RTL, gap: 8, paddingVertical: 4 },
    genreChip: {
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
      borderRadius: 10,
      paddingHorizontal: 13,
      paddingVertical: 6,
    },
    genreChipText: {
      fontSize: 12,
      lineHeight: 18,
      fontFamily: "Cairo_600SemiBold",
      color: colors.textPrimary,
      includeFontPadding: true,
    },
    metaGrid: {
      flexDirection: ROW_RTL,
      flexWrap: "wrap",
      justifyContent: "space-between",
      gap: 8,
    },
    progressCard: {
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
      borderRadius: 14,
      padding: 13,
      gap: 9,
    },
    progressHeader: {
      flexDirection: "row",
      alignItems: "center",
      justifyContent: "space-between",
    },
    progressLabel: { fontSize: 12, fontFamily: "Cairo_700Bold", color: colors.textPrimary },
    openAllEpsBtn: { flexDirection: ROW_RTL, alignItems: "center", gap: 3 },
    openAllEpsText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "#0EA5E9" },
    progressTrack: {
      height: 7,
      borderRadius: 4,
      backgroundColor: colors.surfaceElevated,
      overflow: "hidden",
    },
    progressFill: { height: "100%", backgroundColor: "#10B981", borderRadius: 4 },
    seasonsRow: { flexDirection: ROW_RTL, gap: 8, paddingVertical: 4 },
    seasonPill: {
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
      borderRadius: 12,
      paddingHorizontal: 14,
      paddingVertical: 8,
    },
    seasonPillText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: colors.textPrimary },
    epCard: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 10,
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
      borderRadius: 14,
      padding: 11,
    },
    eyeBtn: {
      width: 38,
      height: 38,
      borderRadius: 11,
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
      alignItems: "center",
      justifyContent: "center",
    },
    epCardContent: { flex: 1, flexDirection: ROW_RTL, alignItems: "center", gap: 10 },
    epCardTitle: {
      fontSize: 13,
      lineHeight: 20,
      fontFamily: "Cairo_700Bold",
      color: colors.textPrimary,
      includeFontPadding: true,
    },
    epCardSub: {
      fontSize: 11,
      lineHeight: 16,
      fontFamily: "Cairo_400Regular",
      color: colors.textMuted,
    },
    epPlayCircle: {
      width: 36,
      height: 36,
      borderRadius: 18,
      backgroundColor: "#0EA5E9",
      alignItems: "center",
      justifyContent: "center",
    },
    castGrid: {
      flexDirection: ROW_RTL,
      flexWrap: "wrap",
      gap: 10,
    },
    castCard: {
      width: "31%",
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
      borderRadius: 14,
      padding: 10,
      alignItems: "center",
      gap: 4,
    },
    castAvatar: {
      width: 54,
      height: 54,
      borderRadius: 27,
      borderWidth: 1.5,
      alignItems: "center",
      justifyContent: "center",
      marginBottom: 4,
    },
    castInitials: { fontSize: 17, fontFamily: "Cairo_800ExtraBold" },
    castNameAr: {
      fontSize: 12,
      lineHeight: 18,
      fontFamily: "Cairo_700Bold",
      color: colors.textPrimary,
      textAlign: "center",
    },
    castNameEn: {
      fontSize: 10,
      fontFamily: "Cairo_600SemiBold",
      color: colors.textMuted,
      textAlign: "center",
    },
    castRole: {
      fontSize: 10,
      lineHeight: 14,
      fontFamily: "Cairo_400Regular",
      color: colors.textSecondary,
      textAlign: "center",
    },
    relCard: { width: 124, gap: 5 },
    relPosterWrap: {
      width: 124,
      height: 178,
      borderRadius: 14,
      overflow: "hidden",
      borderWidth: 1,
      borderColor: colors.border,
      position: "relative",
    },
    relPoster: { width: "100%", height: "100%" },
    relScore: {
      position: "absolute",
      bottom: 6,
      left: 6,
      flexDirection: "row",
      alignItems: "center",
      gap: 3,
      backgroundColor: "rgba(0,0,0,0.8)",
      paddingHorizontal: 6,
      paddingVertical: 2,
      borderRadius: 6,
    },
    relScoreText: { color: "#FBBF24", fontSize: 10, fontFamily: "Cairo_700Bold" },
    relTitle: {
      fontSize: 12,
      lineHeight: 18,
      fontFamily: "Cairo_700Bold",
      color: colors.textPrimary,
      textAlign: "right",
    },
    relSub: { fontSize: 10, fontFamily: "Cairo_400Regular", color: colors.textMuted, textAlign: "right" },
    modalOverlay: {
      flex: 1,
      backgroundColor: "rgba(0,0,0,0.65)",
      justifyContent: "center",
      alignItems: "center",
      padding: 20,
    },
    ratingSheet: {
      width: "100%",
      maxWidth: 420,
      backgroundColor: colors.surface,
      borderRadius: 20,
      borderWidth: 1,
      borderColor: colors.border,
      padding: 20,
      alignItems: "center",
      gap: 10,
    },
    ratingTitle: {
      fontSize: 16,
      fontFamily: "Cairo_800ExtraBold",
      color: colors.textPrimary,
      textAlign: "right",
    },
    ratingSub: { fontSize: 12, fontFamily: "Cairo_400Regular", color: colors.textMuted },
    ratingGrid: {
      flexDirection: "row",
      flexWrap: "wrap",
      justifyContent: "center",
      gap: 8,
      marginTop: 6,
    },
    ratingNum: {
      width: 44,
      height: 44,
      borderRadius: 12,
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
      alignItems: "center",
      justifyContent: "center",
    },
    ratingNumActive: { backgroundColor: "#0EA5E9", borderColor: "#0EA5E9" },
    ratingNumText: { fontSize: 14, fontFamily: "Cairo_700Bold", color: colors.textPrimary },
    ratingNumTextActive: { color: "#FFFFFF" },
    previewCard: {
      width: "100%",
      maxWidth: 420,
      backgroundColor: colors.surface,
      borderRadius: 20,
      overflow: "hidden",
      borderWidth: 1,
      borderColor: colors.border,
    },
    previewImg: { width: "100%", height: 190 },
  });
}
