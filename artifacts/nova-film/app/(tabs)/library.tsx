import React, { useState, useCallback, useMemo } from "react";
import {
  StyleSheet,
  Text,
  View,
  FlatList,
  Platform,
  TextInput,
  ScrollView,
  RefreshControl,
  Image,
} from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import { Ionicons } from "@expo/vector-icons";
import { router, useFocusEffect } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { SafePosterImage } from "@/components/SafePosterImage";
import { WatchlistStatusModal } from "@/components/WatchlistStatusModal";
import {
  FilmPlaybackProgress,
  FavoriteFilmItem,
  SavedFilmCastMember,
  loadAllFilmPlaybackProgress,
  loadFavoriteFilms,
  removeFavoriteFilm,
  removeFilmPlaybackProgress,
  setFilmWatchStatus,
  loadSavedCast,
  toggleSavedCastMember,
} from "@/utils/filmCatalog";
import { tvFocusStyle, TvPressable as Pressable, useTvMetrics } from "@/utils/tv";
import {
  WATCHLIST_STATUSES,
  type WatchlistFilter,
  type WatchlistStatus,
  countByWatchlistStatus,
  filterByWatchlistStatus,
  getWatchlistStatusMeta,
  resolveWatchlistStatus,
} from "@/utils/watchlistStatus";

const TABS = [
  { label: "متابعة", icon: "play-circle" as const },
  { label: "السجل", icon: "time" as const },
  { label: "المحفوظة", icon: "bookmark" as const },
  { label: "النجوم", icon: "people" as const },
];

export default function LibraryScreen() {
  const C = useColors();
  const s = useMemo(() => createStyles(C), [C]);
  const insets = useSafeAreaInsets();
  const { isTv: tvMode } = useTvMetrics();
  const [activeTab, setActiveTab] = useState(0);
  const [history, setHistory] = useState<FilmPlaybackProgress[]>([]);
  const [favorites, setFavorites] = useState<FavoriteFilmItem[]>([]);
  const [savedCast, setSavedCast] = useState<SavedFilmCastMember[]>([]);
  const [refreshing, setRefreshing] = useState(false);

  const [searchQuery, setSearchQuery] = useState("");
  const [statusFilter, setStatusFilter] = useState<WatchlistFilter>("all");
  const [editingFav, setEditingFav] = useState<FavoriteFilmItem | null>(null);
  const [selectedGenre, setSelectedGenre] = useState<string | null>(null);
  const [selectedYear, setSelectedYear] = useState<string | null>(null);

  const loadData = useCallback(async () => {
    const [progressList, favList, castList] = await Promise.all([
      loadAllFilmPlaybackProgress(),
      loadFavoriteFilms(),
      loadSavedCast(),
    ]);
    setHistory(progressList);
    setFavorites(favList);
    setSavedCast(castList);
  }, []);

  useFocusEffect(
    useCallback(() => {
      loadData();
    }, [loadData]),
  );

  const onRefresh = useCallback(async () => {
    setRefreshing(true);
    await loadData();
    setRefreshing(false);
  }, [loadData]);

  const removeHistoryItem = async (item: FilmPlaybackProgress) => {
    await removeFilmPlaybackProgress(item.filmId, item.episodeId);
    setHistory((prev) =>
      prev.filter((h) => !(h.filmId === item.filmId && h.episodeId === item.episodeId)),
    );
  };

  const removeFavorite = async (id: number) => {
    const next = await removeFavoriteFilm(id);
    setFavorites(next);
    setEditingFav(null);
  };

  const setFavoriteStatus = async (item: FavoriteFilmItem, status: WatchlistStatus) => {
    const next = await setFilmWatchStatus(item, status);
    setFavorites(next);
    setEditingFav(null);
  };

  const statusCounts = useMemo(() => countByWatchlistStatus(favorites), [favorites]);

  const removeCast = async (member: SavedFilmCastMember) => {
    const res = await toggleSavedCastMember(member);
    setSavedCast(res.items);
  };

  const continueWatching = useMemo(
    () => history.filter((h) => (h.progressPercent || 0) < 92),
    [history],
  );

  const allGenres = useMemo(() => {
    const genres = new Set<string>();
    favorites.forEach((f) => f.genres?.forEach((g: string) => genres.add(g)));
    return Array.from(genres);
  }, [favorites]);

  const allYears = useMemo(() => {
    const years = new Set<string>();
    favorites.forEach((f) => {
      if (f.year) years.add(String(f.year));
    });
    return Array.from(years).sort((a, b) => Number(b) - Number(a));
  }, [favorites]);

  const filteredContinue = useMemo(() => {
    if (!searchQuery.trim()) return continueWatching;
    const q = searchQuery.toLowerCase();
    return continueWatching.filter(
      (h) =>
        h.title?.toLowerCase().includes(q) ||
        h.englishTitle?.toLowerCase().includes(q) ||
        h.episodeTitle?.toLowerCase().includes(q),
    );
  }, [continueWatching, searchQuery]);

  const filteredHistory = useMemo(() => {
    if (!searchQuery.trim()) return history;
    const q = searchQuery.toLowerCase();
    return history.filter(
      (h) =>
        h.title?.toLowerCase().includes(q) ||
        h.englishTitle?.toLowerCase().includes(q) ||
        h.episodeTitle?.toLowerCase().includes(q),
    );
  }, [history, searchQuery]);

  const filteredFavorites = useMemo(() => {
    return filterByWatchlistStatus(favorites, statusFilter).filter((f) => {
      const q = searchQuery.toLowerCase();
      const titleStr = f.title || f.titleAr || "";
      const enStr = f.englishTitle || f.titleEn || "";
      const matchQuery =
        !q || titleStr.toLowerCase().includes(q) || enStr.toLowerCase().includes(q);
      const matchGenre = !selectedGenre || (f.genres?.includes(selectedGenre) ?? false);
      const matchYear = !selectedYear || String(f.year) === selectedYear;
      return matchQuery && matchGenre && matchYear;
    });
  }, [favorites, statusFilter, searchQuery, selectedGenre, selectedYear]);

  const filteredCast = useMemo(() => {
    if (!searchQuery.trim()) return savedCast;
    const q = searchQuery.toLowerCase();
    return savedCast.filter(
      (c) =>
        c.name.toLowerCase().includes(q) ||
        (c.role?.toLowerCase().includes(q) ?? false) ||
        (c.character?.toLowerCase().includes(q) ?? false) ||
        (c.filmTitle?.toLowerCase().includes(q) ?? false),
    );
  }, [savedCast, searchQuery]);

  const topPad = Platform.OS === "web" ? 67 : insets.top;

  const openHistoryPlayback = (item: FilmPlaybackProgress) => {
    router.push({
      pathname: "/film/watch",
      params: {
        filmId: String(item.filmId),
        kind: item.kind,
        title: item.title,
        englishTitle: item.englishTitle,
        poster: item.poster,
        backdrop: item.backdrop,
        episodeId: item.episodeId || (item.kind === "movie" ? `movie-${item.filmId}` : ""),
        seasonNumber: item.seasonNumber ? String(item.seasonNumber) : "",
        episodeNumber: item.episodeNumber ? String(item.episodeNumber) : "",
        episodeTitle: item.episodeTitle || item.title,
      },
    });
  };

  const renderHistoryItem = ({ item }: { item: FilmPlaybackProgress }) => {
    const progress = Math.max(0.05, Math.min(1, (item.progressPercent || 15) / 100));
    const epLabel =
      item.kind === "series"
        ? `الموسم ${item.seasonNumber || 1} · الحلقة ${item.episodeNumber || 1}`
        : "فيلم سينمائي كامل";

    return (
      <Pressable
        style={({ pressed }) => [s.historyCard, { opacity: pressed ? 0.85 : 1 }]}
        onPress={() => openHistoryPlayback(item)}
      >
        <View style={s.historyImageContainer}>
          <SafePosterImage
            uri={item.poster || item.backdrop}
            fallbackUris={[item.backdrop, item.poster]}
            style={s.historyImage}
            resizeMode="cover"
            iconSize={26}
          />
          <View style={s.kindBadge}>
            <Ionicons
              name={item.kind === "series" ? "tv" : "film"}
              size={10}
              color="#fff"
            />
          </View>
          <LinearGradient
            colors={["transparent", "rgba(0,0,0,0.8)"]}
            style={StyleSheet.absoluteFill}
          />
          <View style={s.playOverlay}>
            <Ionicons name="play-circle" size={28} color="rgba(255,255,255,0.9)" />
          </View>
          <View style={s.progressContainer}>
            <View style={[s.progressBar, { width: `${progress * 100}%` }]} />
          </View>
        </View>
        <View style={s.historyInfo}>
          <Text style={s.historyTitle} numberOfLines={1}>
            {item.title}
          </Text>
          {item.englishTitle && item.englishTitle !== item.title ? (
            <Text style={s.historySubTitle} numberOfLines={1}>
              {item.englishTitle}
            </Text>
          ) : null}
          <View style={s.historyMetaRow}>
            <Text style={s.historyEp}>{epLabel}</Text>
            <Text style={s.historyDate}>
              {new Date(item.updatedAt).toLocaleDateString("ar-SA", {
                month: "short",
                day: "numeric",
              })}
            </Text>
          </View>
        </View>
        <Pressable
          style={s.deleteBtn}
          onPress={() => removeHistoryItem(item)}
          hitSlop={10}
        >
          <Ionicons name="trash-outline" size={18} color={C.textMuted} />
        </Pressable>
      </Pressable>
    );
  };

  return (
    <View style={[s.container, { paddingTop: topPad }]}>
      <View style={s.header}>
        <Text style={s.pageTitle}>قائمتي</Text>
        <View style={s.statsContainer}>
          <Text style={s.statsText}>
            {activeTab === 0
              ? continueWatching.length
              : activeTab === 1
                ? history.length
                : activeTab === 2
                  ? favorites.length
                  : savedCast.length}{" "}
            عنصر
          </Text>
        </View>
      </View>

      {/* Tabs */}
      <View style={s.tabWrapper}>
        <ScrollView
          horizontal
          showsHorizontalScrollIndicator={false}
          contentContainerStyle={s.tabRow}
        >
          {TABS.map((t, i) => {
            const isActive = activeTab === i;
            return (
              <Pressable
                key={t.label}
                focusable={tvMode}
                style={({ focused }) => [s.tab, isActive && s.tabActive, tvMode && tvFocusStyle(focused)]}
                onPress={() => {
                  setActiveTab(i);
                  setSelectedGenre(null);
                  setSelectedYear(null);
                }}
              >
                <Ionicons
                  name={t.icon}
                  size={16}
                  color={isActive ? "#fff" : C.textSecondary}
                />
                <Text style={[s.tabText, isActive && s.tabTextActive]}>
                  {t.label}
                </Text>
              </Pressable>
            );
          })}
        </ScrollView>
      </View>

      {/* Search & Filters */}
      <View style={s.searchSection}>
        <View style={s.searchContainer}>
          <Ionicons
            name="search"
            size={18}
            color={C.textMuted}
            style={s.searchIcon}
          />
          <TextInput
            style={s.searchInput}
            placeholder="ابحث في قائمتك..."
            placeholderTextColor={C.textMuted}
            value={searchQuery}
            onChangeText={setSearchQuery}
            textAlign="right"
          />
          {searchQuery.length > 0 && (
            <Pressable onPress={() => setSearchQuery("")} style={s.clearBtn}>
              <Ionicons name="close-circle" size={16} color={C.textMuted} />
            </Pressable>
          )}
        </View>

        {activeTab === 2 && (
          <ScrollView
            horizontal
            focusable={false}
            showsHorizontalScrollIndicator={false}
            contentContainerStyle={s.filtersRow}
          >
            <Pressable
              focusable={tvMode}
              onPress={() => setStatusFilter("all")}
              style={({ focused }) => [
                s.filterChip,
                s.statusChip,
                statusFilter === "all" && { backgroundColor: C.accentSurface, borderColor: C.accent },
                tvMode && tvFocusStyle(focused),
              ]}
            >
              <Text
                style={[
                  s.filterChipText,
                  { color: statusFilter === "all" ? C.accent : C.textSecondary },
                ]}
              >
                الكل ({statusCounts.all})
              </Text>
            </Pressable>
            {WATCHLIST_STATUSES.map((st) => {
              const active = statusFilter === st.id;
              return (
                <Pressable
                  key={st.id}
                  focusable={tvMode}
                  onPress={() => setStatusFilter(st.id)}
                  style={({ focused }) => [
                    s.filterChip,
                    s.statusChip,
                    active && { backgroundColor: st.bg, borderColor: st.border },
                    tvMode && tvFocusStyle(focused),
                  ]}
                >
                  <Ionicons
                    name={active ? st.activeIcon : st.icon}
                    size={12}
                    color={active ? st.color : C.textSecondary}
                  />
                  <Text
                    style={[
                      s.filterChipText,
                      { color: active ? st.color : C.textSecondary },
                    ]}
                  >
                    {st.label} ({statusCounts[st.id]})
                  </Text>
                </Pressable>
              );
            })}
          </ScrollView>
        )}

        {activeTab === 2 && (allGenres.length > 0 || allYears.length > 0) && (
          <ScrollView
            horizontal
            showsHorizontalScrollIndicator={false}
            contentContainerStyle={s.filtersRow}
          >
            {allYears.map((year) => {
              const isSelected = selectedYear === year;
              return (
                <Pressable
                  key={`year-${year}`}
                  style={[s.filterChip, isSelected && s.filterChipActive]}
                  onPress={() => setSelectedYear(isSelected ? null : year)}
                >
                  <Text
                    style={[
                      s.filterChipText,
                      isSelected && s.filterChipTextActive,
                    ]}
                  >
                    {year}
                  </Text>
                </Pressable>
              );
            })}
            {allYears.length > 0 && allGenres.length > 0 && (
              <View style={s.filterDivider} />
            )}
            {allGenres.map((genre) => {
              const isSelected = selectedGenre === genre;
              return (
                <Pressable
                  key={`genre-${genre}`}
                  style={[s.filterChip, isSelected && s.filterChipActive]}
                  onPress={() => setSelectedGenre(isSelected ? null : genre)}
                >
                  <Text
                    style={[
                      s.filterChipText,
                      isSelected && s.filterChipTextActive,
                    ]}
                  >
                    {genre}
                  </Text>
                </Pressable>
              );
            })}
          </ScrollView>
        )}
      </View>

      {/* Content */}
      {activeTab === 0 && (
        <FlatList
          data={filteredContinue}
          keyExtractor={(item) => `${item.filmId}_${item.episodeId || "main"}`}
          contentContainerStyle={s.list}
          showsVerticalScrollIndicator={false}
          overScrollMode="never"
          initialNumToRender={9}
          maxToRenderPerBatch={6}
          windowSize={5}
          removeClippedSubviews={Platform.OS === "android"}
          refreshControl={
            <RefreshControl
              refreshing={refreshing}
              onRefresh={onRefresh}
              tintColor={C.accent}
            />
          }
          ListEmptyComponent={
            <EmptyState
              icon="play-circle-outline"
              title="لا توجد أعمال قيد المشاهدة"
              sub={
                searchQuery
                  ? "لا توجد نتائج مطابقة لبحثك"
                  : "ابدأ بمشاهدة أي فيلم أو مسلسل وسيظهر هنا لتكمل من حيث توقفت"
              }
              C={C}
              s={s}
            />
          }
          renderItem={renderHistoryItem}
        />
      )}

      {activeTab === 1 && (
        <FlatList
          data={filteredHistory}
          keyExtractor={(item) => `${item.filmId}_${item.episodeId || "main"}_${item.updatedAt}`}
          contentContainerStyle={s.list}
          showsVerticalScrollIndicator={false}
          overScrollMode="never"
          initialNumToRender={9}
          maxToRenderPerBatch={6}
          windowSize={5}
          removeClippedSubviews={Platform.OS === "android"}
          refreshControl={
            <RefreshControl
              refreshing={refreshing}
              onRefresh={onRefresh}
              tintColor={C.accent}
            />
          }
          ListEmptyComponent={
            <EmptyState
              icon="time-outline"
              title="سجل المشاهدة فارغ"
              sub={
                searchQuery
                  ? "لا توجد نتائج مطابقة لبحثك"
                  : "الأفلام والحلقات التي تشاهدها ستظهر هنا"
              }
              C={C}
              s={s}
            />
          }
          renderItem={renderHistoryItem}
        />
      )}

      {activeTab === 2 && (
        <FlatList
          data={filteredFavorites}
          keyExtractor={(item) => String(item.id)}
          numColumns={3}
          contentContainerStyle={s.grid}
          columnWrapperStyle={s.gridRow}
          showsVerticalScrollIndicator={false}
          overScrollMode="never"
          initialNumToRender={9}
          maxToRenderPerBatch={6}
          windowSize={5}
          removeClippedSubviews={Platform.OS === "android"}
          refreshControl={
            <RefreshControl
              refreshing={refreshing}
              onRefresh={onRefresh}
              tintColor={C.accent}
            />
          }
          ListEmptyComponent={
            <EmptyState
              icon="bookmark-outline"
              title="لا توجد أعمال محفوظة"
              sub={
                searchQuery || selectedGenre || selectedYear || statusFilter !== "all"
                  ? "لا توجد نتائج مطابقة للبحث أو الفلتر"
                  : "أضف أفلامك ومسلسلاتك بالضغط على زر قائمتي في صفحة التفاصيل"
              }
              C={C}
              s={s}
            />
          }
          renderItem={({ item }) => {
            const stMeta = getWatchlistStatusMeta(item.watchStatus);
            return (
              <Pressable
                focusable={tvMode}
                style={({ focused, pressed }) => [
                  s.favCard,
                  { opacity: pressed ? 0.85 : 1 },
                  tvMode && tvFocusStyle(focused),
                ]}
                onPress={() =>
                  router.push({
                    pathname: "/film/[id]",
                    params: { id: String(item.id), type: item.tmdbType },
                  })
                }
              >
                <View style={s.favImgContainer}>
                  <SafePosterImage
                    uri={item.poster || item.posterUrl}
                    fallbackUris={[item.posterUrl, item.poster]}
                    style={s.favImg}
                    resizeMode="cover"
                    iconSize={24}
                  />
                  <LinearGradient
                    colors={[
                      "rgba(0,0,0,0.6)",
                      "transparent",
                      "rgba(0,0,0,0.8)",
                    ]}
                    style={StyleSheet.absoluteFill}
                  />
                  <Pressable
                    focusable={tvMode}
                    style={({ focused }) => [
                      s.favStatusBadge,
                      { backgroundColor: "rgba(9,9,11,0.84)", borderColor: stMeta.border },
                      tvMode && tvFocusStyle(focused),
                    ]}
                    onPress={(e: any) => {
                      e?.stopPropagation?.();
                      setEditingFav(item);
                    }}
                    hitSlop={8}
                  >
                    <Ionicons name={stMeta.activeIcon} size={11} color={stMeta.color} />
                    <Text style={[s.favStatusText, { color: stMeta.color }]} numberOfLines={1}>
                      {stMeta.shortLabel}
                    </Text>
                  </Pressable>
                  {(item.rating || item.imdbRating) ? (
                    <View style={s.favScore}>
                      <Ionicons name="star" size={10} color={"#FBBF24"} />
                      <Text style={s.favScoreText}>
                        {(item.rating || item.imdbRating).toFixed(1)}
                      </Text>
                    </View>
                  ) : null}
                </View>
                <Text style={s.favTitle} numberOfLines={2}>
                  {item.title || item.titleAr}
                </Text>
              </Pressable>
            );
          }}
        />
      )}

      {activeTab === 3 && (
        <FlatList
          data={filteredCast}
          keyExtractor={(item) => String(item.id)}
          numColumns={3}
          contentContainerStyle={s.grid}
          columnWrapperStyle={s.gridRow}
          showsVerticalScrollIndicator={false}
          overScrollMode="never"
          initialNumToRender={9}
          maxToRenderPerBatch={6}
          windowSize={5}
          removeClippedSubviews={Platform.OS === "android"}
          refreshControl={
            <RefreshControl
              refreshing={refreshing}
              onRefresh={onRefresh}
              tintColor={C.accent}
            />
          }
          ListEmptyComponent={
            <EmptyState
              icon="people-outline"
              title="لا يوجد ممثلون أو صناع مفضلون"
              sub={
                searchQuery
                  ? "لا توجد نتائج مطابقة لبحثك"
                  : "أضف نجومك المفضلين بالضغط على زر القلب في قسم طاقم العمل"
              }
              C={C}
              s={s}
            />
          }
          renderItem={({ item }) => (
            <Pressable
              style={({ pressed }) => [
                s.charCard,
                { opacity: pressed ? 0.85 : 1 },
              ]}
              onPress={() => {
                if (item.filmId) {
                  router.push({
                    pathname: "/film/[id]",
                    params: { id: String(item.filmId) },
                  });
                }
              }}
            >
              <View style={s.charImgContainer}>
                {item.avatar || item.image ? (
                  <Image
                    source={{ uri: item.avatar || item.image }}
                    style={s.charImg}
                    resizeMode="cover"
                  fadeDuration={0}
                  resizeMethod={Platform.OS === "android" ? "resize" : undefined}
                  />
                ) : (
                  <View style={[s.charImg, s.charPlaceholder]}>
                    <Ionicons name="person" size={34} color={C.textMuted} />
                  </View>
                )}
                <LinearGradient
                  colors={[
                    "rgba(0,0,0,0.4)",
                    "transparent",
                    "rgba(0,0,0,0.85)",
                  ]}
                  style={StyleSheet.absoluteFill}
                />
                <Pressable
                  style={s.favHeart}
                  onPress={() => removeCast(item)}
                  hitSlop={8}
                >
                  <Ionicons name="heart" size={16} color={C.accent} />
                </Pressable>
                <View style={s.charInfoOverlay}>
                  <Text style={s.charName} numberOfLines={1}>
                    {item.name}
                  </Text>
                  {item.filmTitle ? (
                    <Text style={s.charAnime} numberOfLines={1}>
                      {item.filmTitle}
                    </Text>
                  ) : item.role || item.character ? (
                    <Text style={s.charAnime} numberOfLines={1}>
                      {item.role || item.character}
                    </Text>
                  ) : null}
                </View>
              </View>
            </Pressable>
          )}
        />
      )}

      <WatchlistStatusModal
        visible={Boolean(editingFav)}
        title={editingFav ? (editingFav.titleAr || editingFav.titleEn || editingFav.title || "") : ""}
        thumbnail={editingFav?.posterUrl || editingFav?.poster || undefined}
        currentStatus={editingFav ? resolveWatchlistStatus(editingFav.watchStatus) : undefined}
        isSaved={Boolean(editingFav)}
        onSelect={(status: WatchlistStatus) => {
          if (editingFav) void setFavoriteStatus(editingFav, status);
        }}
        onRemove={editingFav ? () => void removeFavorite(editingFav.id) : undefined}
        onClose={() => setEditingFav(null)}
      />
    </View>
  );
}

function EmptyState({
  icon,
  title,
  sub,
  C,
  s,
}: {
  icon: any;
  title: string;
  sub: string;
  C: ReturnType<typeof useColors>;
  s: ReturnType<typeof createStyles>;
}) {
  return (
    <View style={s.empty}>
      <View style={s.emptyIconCircle}>
        <Ionicons name={icon} size={48} color={C.accent} />
      </View>
      <Text style={s.emptyTitle}>{title}</Text>
      <Text style={s.emptySub}>{sub}</Text>
      <Pressable
        style={s.exploreBtn}
        onPress={() => router.push("/(tabs)/browse")}
      >
        <Text style={s.exploreBtnText}>استعرض الأفلام والمسلسلات</Text>
      </Pressable>
    </View>
  );
}

const createStyles = (C: ReturnType<typeof useColors>) =>
  StyleSheet.create({
    container: { flex: 1, backgroundColor: C.background },
    header: {
      flexDirection: "row-reverse",
      alignItems: "center",
      justifyContent: "space-between",
      paddingHorizontal: 16,
      paddingBottom: 12,
      paddingTop: 4,
    },
    pageTitle: {
      color: C.textPrimary,
      fontSize: 28,
      fontFamily: "Inter_700Bold",
      textAlign: "right",
    },
    statsContainer: {
      backgroundColor: C.card,
      paddingHorizontal: 12,
      paddingVertical: 6,
      borderRadius: 20,
      borderWidth: 1,
      borderColor: C.border,
    },
    statsText: {
      color: C.textSecondary,
      fontSize: 12,
      fontFamily: "Inter_600SemiBold",
    },
    tabWrapper: {
      borderBottomWidth: 1,
      borderBottomColor: C.border,
      marginBottom: 12,
    },
    tabRow: {
      flexDirection: "row-reverse",
      paddingHorizontal: 16,
      paddingBottom: 12,
      gap: 8,
    },
    tab: {
      flexDirection: "row-reverse",
      alignItems: "center",
      gap: 6,
      paddingHorizontal: 16,
      paddingVertical: 8,
      borderRadius: 20,
      backgroundColor: C.card,
      borderWidth: 1,
      borderColor: C.border,
    },
    tabActive: {
      backgroundColor: C.accent,
      borderColor: C.accent,
    },
    tabText: {
      color: C.textSecondary,
      fontSize: 13,
      fontFamily: "Inter_600SemiBold",
    },
    tabTextActive: {
      color: "#fff",
    },
    searchSection: {
      paddingHorizontal: 16,
      marginBottom: 12,
      gap: 10,
    },
    searchContainer: {
      flexDirection: "row-reverse",
      alignItems: "center",
      backgroundColor: C.card,
      borderRadius: 12,
      paddingHorizontal: 12,
      height: 44,
      borderWidth: 1,
      borderColor: C.border,
    },
    searchIcon: {
      marginLeft: 8,
    },
    searchInput: {
      flex: 1,
      color: C.textPrimary,
      fontSize: 14,
      fontFamily: "Inter_400Regular",
      height: "100%",
    },
    clearBtn: {
      padding: 4,
    },
    filtersRow: {
      flexDirection: "row-reverse",
      alignItems: "center",
      gap: 6,
      paddingVertical: 2,
    },
    filterChip: {
      paddingHorizontal: 12,
      paddingVertical: 6,
      borderRadius: 16,
      backgroundColor: C.card,
      borderWidth: 1,
      borderColor: C.border,
    },
    statusChip: {
      flexDirection: "row-reverse",
      alignItems: "center",
      gap: 5,
    },
    filterChipActive: {
      backgroundColor: C.accentSurface,
      borderColor: C.accent,
    },
    filterChipText: {
      color: C.textSecondary,
      fontSize: 12,
      fontFamily: "Inter_500Medium",
    },
    filterChipTextActive: {
      color: C.accent,
      fontFamily: "Inter_600SemiBold",
    },
    filterDivider: {
      width: 1,
      height: 20,
      backgroundColor: C.border,
      marginHorizontal: 4,
    },
    list: { paddingHorizontal: 16, paddingBottom: 100, gap: 10 },
    historyCard: {
      flexDirection: "row-reverse",
      alignItems: "center",
      backgroundColor: C.card,
      borderRadius: 14,
      overflow: "hidden",
      gap: 12,
      paddingLeft: 12,
      borderWidth: 1,
      borderColor: C.border,
    },
    historyImageContainer: {
      width: 100,
      height: 78,
      position: "relative",
    },
    historyImage: {
      width: "100%",
      height: "100%",
      backgroundColor: C.surfaceElevated,
    },
    kindBadge: {
      position: "absolute",
      top: 4,
      right: 4,
      width: 18,
      height: 18,
      borderRadius: 9,
      backgroundColor: "rgba(14,165,233,0.85)",
      alignItems: "center",
      justifyContent: "center",
      zIndex: 2,
    },
    playOverlay: {
      ...StyleSheet.absoluteFillObject,
      alignItems: "center",
      justifyContent: "center",
    },
    progressContainer: {
      position: "absolute",
      bottom: 0,
      left: 0,
      right: 0,
      height: 3,
      backgroundColor: "rgba(255,255,255,0.2)",
    },
    progressBar: {
      height: "100%",
      backgroundColor: C.accent,
    },
    historyInfo: {
      flex: 1,
      alignItems: "flex-end",
      paddingVertical: 10,
      gap: 4,
    },
    historyTitle: {
      color: C.textPrimary,
      fontSize: 14,
      fontFamily: "Inter_600SemiBold",
      textAlign: "right",
    },
    historySubTitle: {
      color: C.textSecondary,
      fontSize: 11,
      fontFamily: "Inter_400Regular",
      textAlign: "right",
    },
    historyMetaRow: {
      flexDirection: "row-reverse",
      alignItems: "center",
      gap: 8,
      marginTop: 2,
    },
    historyEp: {
      color: C.accent,
      fontSize: 12,
      fontFamily: "Inter_600SemiBold",
    },
    historyDate: {
      color: C.textMuted,
      fontSize: 11,
      fontFamily: "Inter_400Regular",
    },
    deleteBtn: {
      padding: 8,
      backgroundColor: C.surfaceElevated,
      borderRadius: 8,
    },
    grid: { paddingHorizontal: 12, paddingBottom: 100 },
    gridRow: {
      justifyContent: "flex-end",
      gap: 8,
      marginBottom: 12,
      paddingHorizontal: 4,
    },
    favCard: { flex: 1, maxWidth: "32%", gap: 6 },
    favImgContainer: {
      width: "100%",
      aspectRatio: 2 / 3,
      borderRadius: 12,
      overflow: "hidden",
      backgroundColor: C.surfaceElevated,
      position: "relative",
      borderWidth: 1,
      borderColor: C.border,
    },
    favImg: {
      width: "100%",
      height: "100%",
    },
    favHeart: {
      position: "absolute",
      top: 6,
      left: 6,
      width: 28,
      height: 28,
      borderRadius: 14,
      backgroundColor: "rgba(0,0,0,0.6)",
      alignItems: "center",
      justifyContent: "center",
    },
    favStatusBadge: {
      position: "absolute",
      top: 6,
      left: 6,
      flexDirection: "row-reverse",
      alignItems: "center",
      gap: 4,
      paddingHorizontal: 7,
      paddingVertical: 3,
      borderRadius: 8,
      borderWidth: 1,
      zIndex: 4,
    },
    favStatusText: {
      fontSize: 9.5,
      fontFamily: "Cairo_700Bold",
    },
    favScore: {
      position: "absolute",
      bottom: 6,
      right: 6,
      flexDirection: "row",
      alignItems: "center",
      gap: 3,
      backgroundColor: "rgba(0,0,0,0.75)",
      paddingHorizontal: 6,
      paddingVertical: 3,
      borderRadius: 6,
    },
    favScoreText: {
      color: "#fff",
      fontSize: 10,
      fontFamily: "Inter_700Bold",
    },
    favTitle: {
      color: C.textPrimary,
      fontSize: 12,
      fontFamily: "Inter_600SemiBold",
      textAlign: "right",
      lineHeight: 16,
    },
    charCard: { flex: 1, maxWidth: "32%" },
    charImgContainer: {
      width: "100%",
      aspectRatio: 3 / 4,
      borderRadius: 12,
      overflow: "hidden",
      backgroundColor: C.surfaceElevated,
      position: "relative",
      borderWidth: 1,
      borderColor: C.border,
    },
    charImg: {
      width: "100%",
      height: "100%",
    },
    charPlaceholder: {
      alignItems: "center",
      justifyContent: "center",
    },
    charInfoOverlay: {
      position: "absolute",
      bottom: 0,
      left: 0,
      right: 0,
      padding: 8,
      alignItems: "flex-end",
    },
    charName: {
      color: "#fff",
      fontSize: 12,
      fontFamily: "Inter_700Bold",
      textAlign: "right",
    },
    charAnime: {
      color: "rgba(255,255,255,0.7)",
      fontSize: 10,
      fontFamily: "Inter_500Medium",
      textAlign: "right",
      marginTop: 2,
    },
    empty: {
      flex: 1,
      alignItems: "center",
      justifyContent: "center",
      paddingTop: 60,
      gap: 12,
      paddingHorizontal: 32,
    },
    emptyIconCircle: {
      width: 80,
      height: 80,
      borderRadius: 40,
      backgroundColor: C.accentSurface,
      alignItems: "center",
      justifyContent: "center",
      marginBottom: 4,
    },
    emptyTitle: {
      color: C.textPrimary,
      fontSize: 18,
      fontFamily: "Inter_700Bold",
      textAlign: "center",
    },
    emptySub: {
      color: C.textSecondary,
      fontSize: 13,
      fontFamily: "Inter_400Regular",
      textAlign: "center",
      lineHeight: 20,
    },
    exploreBtn: {
      marginTop: 8,
      backgroundColor: C.accent,
      paddingHorizontal: 20,
      paddingVertical: 10,
      borderRadius: 20,
    },
    exploreBtnText: {
      color: "#fff",
      fontSize: 14,
      fontFamily: "Inter_600SemiBold",
    },
  });
