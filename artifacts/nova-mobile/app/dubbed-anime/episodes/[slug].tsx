import React, { useState, useEffect, useCallback, useMemo, useRef } from "react";
import {
  View,
  Text,
  TextInput,
  Image,
  FlatList,
  ScrollView,
  ActivityIndicator,
  StyleSheet,
  Platform,
  useWindowDimensions,
  I18nManager,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { SafePosterImage } from "@/components/SafePosterImage";
import { getWatchContentId, useApp } from "@/context/AppContext";
import { useColors } from "@/hooks/useColors";
import type { ThemePalette } from "@/constants/colors";
import { getBaseUrl } from "@/utils/api";
import {
  tvFocusStyle,
  TvFocusGuideView,
  TvPressable as Pressable,
  useTvListFocusScroll,
  useTvMetrics,
} from "@/utils/tv";
import { useTvFocusMemory } from "@/utils/tvFocus";
import { _azDetailMemoryCache, type AzDetail, type AzEpisode } from "../[slug]";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

function readParam(val: string | string[] | undefined): string {
  const raw = Array.isArray(val) ? val[0] : val;
  if (!raw) return "";
  try {
    return decodeURIComponent(raw);
  } catch {
    return raw;
  }
}

export default function DubbedAnimeEpisodesScreen() {
  const colors = useColors();
  const ep_s = useMemo(() => createEpisodesStyles(colors), [colors]);
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { width } = useWindowDimensions();
  const { tv: tvMode } = useTvMetrics();
  const topPad = Platform.OS === "web" ? 0 : insets.top;

  const params = useLocalSearchParams<{
    slug: string;
    title?: string;
    poster?: string;
  }>();
  const slug = readParam(params.slug);
  const initialTitle = readParam(params.title);
  const initialPoster = readParam(params.poster);

  const { rememberFocus } = useTvFocusMemory(`dubbed-episodes:${slug || "unknown"}`);
  const { watchHistory } = useApp();
  const numericFavId = useMemo(() => getWatchContentId("dubbed", `az:${slug}`), [slug]);

  const cachedEntry = slug ? _azDetailMemoryCache.get(slug) : undefined;
  const [detail, setDetail] = useState<AzDetail | null>(() => cachedEntry?.detail ?? null);
  const [selectedSeason, setSelectedSeason] = useState<number>(() => cachedEntry?.detail?.activeSeason || 1);
  const [loading, setLoading] = useState(() => !cachedEntry?.detail);
  const [seasonLoading, setSeasonLoading] = useState(false);
  const [error, setError] = useState("");
  const [sortOrder, setSortOrder] = useState<"asc" | "desc">("asc");
  const [search, setSearch] = useState("");
  const [activeRange, setActiveRange] = useState<[number, number] | null>(null);
  const [watchedEps, setWatchedEps] = useState<number[]>([]);
  const fetchedOnceRef = useRef(Boolean(cachedEntry?.detail));

  const episodeListRef = useRef<FlatList<AzEpisode> | null>(null);
  const { scrollToFocusedIndex } = useTvListFocusScroll(episodeListRef, 0.35);

  const loadDetail = useCallback(
    async (seasonNum?: number) => {
      if (!slug) {
        setError("معرّف الأنمي غير صالح");
        setLoading(false);
        return;
      }
      const isSwitchingSeason = Boolean(seasonNum && fetchedOnceRef.current);
      if (isSwitchingSeason) {
        setSeasonLoading(true);
      } else {
        const cached = _azDetailMemoryCache.get(slug);
        if (cached?.detail) {
          setDetail(cached.detail);
          setSelectedSeason(cached.detail.activeSeason || 1);
          setLoading(false);
          fetchedOnceRef.current = true;
        } else {
          setLoading(true);
        }
      }
      setError("");

      try {
        const base = getBaseUrl();
        const qs = new URLSearchParams({ slug });
        if (seasonNum && seasonNum > 0) qs.set("season", String(seasonNum));
        const res = await fetch(`${base}/api/dubbed/animezid/detail?${qs.toString()}`);
        if (!res.ok) throw new Error(`HTTP ${res.status}`);
        const json: AzDetail = await res.json();
        fetchedOnceRef.current = true;
        setDetail(json);
        setSelectedSeason(json.activeSeason || seasonNum || 1);
        setActiveRange(null);
        if (!seasonNum || seasonNum === 1) {
          const prev = _azDetailMemoryCache.get(slug);
          _azDetailMemoryCache.set(slug, { detail: json, descAr: prev?.descAr });
        }
      } catch {
        if (!fetchedOnceRef.current) {
          setError("تعذّر تحميل حلقات الأنمي المدبلج — تحقق من الاتصال وأعد المحاولة");
        }
      } finally {
        setLoading(false);
        setSeasonLoading(false);
      }
    },
    [slug],
  );

  useEffect(() => {
    const cached = slug ? _azDetailMemoryCache.get(slug) : undefined;
    fetchedOnceRef.current = Boolean(cached?.detail);
    setDetail(cached?.detail ?? null);
    setSelectedSeason(cached?.detail?.activeSeason || 1);
    setSearch("");
    setActiveRange(null);
    void loadDetail();
  }, [loadDetail, slug]);

  const storageWatchKey = useMemo(
    () => `watched-az:${slug}:s${selectedSeason || 1}`,
    [slug, selectedSeason],
  );

  useEffect(() => {
    let active = true;
    AsyncStorage.getItem(storageWatchKey)
      .then((raw) => {
        if (!active) return;
        const stored: number[] = raw ? JSON.parse(raw) : [];
        const fromHistory = watchHistory
          .filter((h) => h.contentKey === `az:${slug}` || h.animeId === numericFavId)
          .map((h) => Number(h.ep))
          .filter((n) => Number.isFinite(n) && n > 0);
        const merged = Array.from(new Set([...stored, ...fromHistory]));
        setWatchedEps(merged);
      })
      .catch(() => {});
    return () => {
      active = false;
    };
  }, [storageWatchKey, watchHistory, slug, numericFavId]);

  const toggleWatchedEp = useCallback(
    async (epNumber: number) => {
      setWatchedEps((prev) => {
        const exists = prev.includes(epNumber);
        const next = exists ? prev.filter((n) => n !== epNumber) : [...prev, epNumber];
        AsyncStorage.setItem(storageWatchKey, JSON.stringify(next)).catch(() => {});
        return next;
      });
    },
    [storageWatchKey],
  );

  const anilist = detail?.anilist ?? null;
  const displayTitle = detail?.titleAr || initialTitle || "الحلقات";
  const posterUri =
    detail?.poster || anilist?.coverImage?.extraLarge || anilist?.coverImage?.large || initialPoster;
  const bannerUri = anilist?.bannerImage || posterUri;
  const rawScore = anilist?.meanScore || anilist?.averageScore || null;
  const score = rawScore ? (rawScore / 10).toFixed(1) : null;
  const seasons = detail?.seasons || [];
  const episodes = detail?.episodes || [];
  const total = episodes.length;
  const watchedSet = useMemo(() => new Set(watchedEps), [watchedEps]);
  const watchedCount = useMemo(
    () => episodes.filter((e) => watchedSet.has(e.number)).length,
    [episodes, watchedSet],
  );
  const pct = total > 0 ? Math.min(100, Math.round((watchedCount / total) * 100)) : 0;

  const ranges = useMemo(() => {
    if (total <= 12) return [];
    const list: [number, number][] = [];
    for (let i = 0; i < total; i += 12) {
      const start = episodes[i]?.number ?? i + 1;
      const end = episodes[Math.min(total - 1, i + 11)]?.number ?? Math.min(total, i + 12);
      list.push([start, end]);
    }
    return list;
  }, [episodes, total]);

  const filteredEpisodes = useMemo(() => {
    let list = [...episodes];
    const q = search.trim();
    if (q) {
      list = list.filter((ep) => ep.numberLabel.includes(q) || ep.title.includes(q) || String(ep.number) === q);
    } else if (activeRange) {
      const [minEp, maxEp] = activeRange;
      list = list.filter((ep) => ep.number >= minEp && ep.number <= maxEp);
    }
    if (sortOrder === "desc") list.reverse();
    return list;
  }, [episodes, search, activeRange, sortOrder]);

  const nextEpisodeToWatch = useMemo(() => {
    if (!episodes.length) return null;
    const historyItem = watchHistory.find(
      (h) => h.contentKey === `az:${slug}` || h.animeId === numericFavId,
    );
    if (historyItem?.ep) {
      const found = episodes.find((e) => e.number === historyItem.ep);
      if (found) return found;
    }
    const firstUnwatched = episodes.find((e) => !watchedSet.has(e.number));
    return firstUnwatched || episodes[0];
  }, [episodes, watchHistory, slug, numericFavId, watchedSet]);

  const openEpisode = useCallback(
    (ep: AzEpisode) => {
      if (!watchedSet.has(ep.number)) {
        const next = [...watchedEps, ep.number];
        setWatchedEps(next);
        AsyncStorage.setItem(storageWatchKey, JSON.stringify(next)).catch(() => {});
      }
      const seasonObj = seasons.find((s) => s.seasonNumber === selectedSeason);
      const seasonLabel =
        seasonObj?.label || (seasons.length > 0 ? `الموسم ${selectedSeason}` : "الموسم 1");
      router.push({
        pathname: "/dubbed/watch",
        params: {
          provider: "az",
          showId: slug,
          episodeId: ep.vid,
          ep: String(ep.number),
          season: seasonLabel,
          title: displayTitle,
          poster: posterUri ? encodeURIComponent(posterUri) : "",
          watchUrl: ep.watchUrl,
          totalEps: String(episodes.length),
        },
      } as any);
    },
    [
      watchedSet,
      watchedEps,
      storageWatchKey,
      seasons,
      selectedSeason,
      router,
      slug,
      displayTitle,
      posterUri,
      episodes.length,
    ],
  );

  const scrollToTop = useCallback(() => {
    episodeListRef.current?.scrollToOffset({ offset: 0, animated: true });
  }, []);

  const scrollToBottom = useCallback(() => {
    episodeListRef.current?.scrollToEnd({ animated: true });
  }, []);

  if (loading && !detail) {
    return (
      <View style={[ep_s.container, { paddingTop: topPad }]}>
        <View style={[ep_s.topBar, tvMode && ep_s.tvTopBar]}>
          <Pressable
            onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)/aw-dubbed" as any))}
            focusable={tvMode}
            style={({ focused }) => [ep_s.topBarBack, tvMode && ep_s.tvTopBarBack, tvMode && tvFocusStyle(focused)]}
          >
            <Ionicons name="chevron-forward" size={tvMode ? 24 : 20} color={colors.textPrimary} />
          </Pressable>
          <View style={ep_s.topBarHeading}>
            <Text style={[ep_s.topBarTitle, tvMode && ep_s.tvTopBarTitle]} numberOfLines={1}>
              {displayTitle}
            </Text>
          </View>
        </View>
        <View style={ep_s.center}>
          <ActivityIndicator size="large" color="#0EA5E9" />
          <Text style={{ color: colors.textSecondary, fontFamily: "Cairo_600SemiBold", fontSize: 13, marginTop: 12 }}>
            جارٍ تحضير قائمة الحلقات...
          </Text>
        </View>
      </View>
    );
  }

  if (error && !detail) {
    return (
      <View style={[ep_s.container, ep_s.center, { paddingTop: topPad, paddingHorizontal: 28, gap: 14 }]}>
        <Ionicons name="cloud-offline-outline" size={38} color="#0EA5E9" />
        <Text style={{ color: colors.textPrimary, fontFamily: "Cairo_700Bold", fontSize: 16, textAlign: "center" }}>
          تعذّر تحميل الحلقات
        </Text>
        <Text style={{ color: colors.textSecondary, fontFamily: "Cairo_400Regular", fontSize: 12, textAlign: "center" }}>
          {error}
        </Text>
        <Pressable
          onPress={() => void loadDetail()}
          focusable={tvMode}
          style={({ focused }) => [
            {
              backgroundColor: "#0EA5E9",
              paddingHorizontal: 24,
              paddingVertical: 11,
              borderRadius: 14,
              flexDirection: "row",
              alignItems: "center",
              gap: 8,
            },
            tvMode && tvFocusStyle(focused),
          ]}
        >
          <Ionicons name="refresh" size={16} color="#fff" />
          <Text style={{ color: "#fff", fontFamily: "Cairo_700Bold", fontSize: 13 }}>إعادة المحاولة</Text>
        </Pressable>
      </View>
    );
  }

  return (
    <View style={[ep_s.container, { paddingTop: topPad }]}>
      {/* ── Fixed Top Bar (Matches `app/episodes/[id].tsx` 100%) ── */}
      <View style={[ep_s.topBar, tvMode && ep_s.tvTopBar]}>
        <Pressable
          onPress={() => (router.canGoBack() ? router.back() : router.replace(`/dubbed-anime/${slug}` as any))}
          focusable={tvMode}
          testID="nova-tv-header-action"
          onFocus={() => {
            if (tvMode) rememberFocus("back");
          }}
          accessibilityRole="button"
          accessibilityLabel="رجوع"
          style={({ focused }) => [ep_s.topBarBack, tvMode && ep_s.tvTopBarBack, tvMode && tvFocusStyle(focused)]}
        >
          <Ionicons name="chevron-forward" size={tvMode ? 24 : 20} color={colors.textPrimary} />
        </Pressable>

        <View style={ep_s.topBarHeading}>
          <Text style={[ep_s.topBarTitle, tvMode && ep_s.tvTopBarTitle]} numberOfLines={1}>
            {displayTitle}
          </Text>
          <View style={ep_s.topBarSubRow}>
            <Text style={ep_s.topBarSubtitle} numberOfLines={1}>
              الموسم {selectedSeason || 1} · {total} حلقة
            </Text>
            {watchedCount > 0 ? <Text style={ep_s.topBarPctText}>({pct}% مكتمل)</Text> : null}
          </View>
        </View>

        <View style={ep_s.topBarLeftTools}>
          <Pressable
            onPress={scrollToTop}
            focusable={tvMode}
            style={({ focused, pressed }) => [
              ep_s.topBarJumpBtn,
              tvMode && tvFocusStyle(focused),
              pressed && { opacity: 0.8 },
            ]}
            accessibilityRole="button"
            accessibilityLabel="التمرير للأعلى"
          >
            <Ionicons name="chevron-up" size={15} color={colors.textPrimary} />
          </Pressable>
          <Pressable
            onPress={scrollToBottom}
            focusable={tvMode}
            style={({ focused, pressed }) => [
              ep_s.topBarJumpBtn,
              tvMode && tvFocusStyle(focused),
              pressed && { opacity: 0.8 },
            ]}
            accessibilityRole="button"
            accessibilityLabel="التمرير للأسفل"
          >
            <Ionicons name="chevron-down" size={15} color={colors.textPrimary} />
          </Pressable>
          <Pressable
            onPress={() => {
              setSortOrder((cur) => (cur === "asc" ? "desc" : "asc"));
              episodeListRef.current?.scrollToOffset({ offset: 0, animated: false });
            }}
            focusable={tvMode}
            testID="dubbed-episode-sort"
            accessibilityRole="button"
            style={({ focused, pressed }) => [
              ep_s.topBarSort,
              tvMode && ep_s.tvTopBarSort,
              tvMode && tvFocusStyle(focused),
              pressed && { opacity: 0.84 },
            ]}
          >
            <Text style={[ep_s.topBarSortText, { color: colors.textPrimary }]}>
              {sortOrder === "asc" ? "الأقدم" : "الأحدث"}
            </Text>
            <Ionicons name="swap-vertical" size={tvMode ? 18 : 13} color={colors.textPrimary} />
          </Pressable>
        </View>
      </View>

      <TvFocusGuideView autoFocus={tvMode} style={ep_s.tvFocusGuide}>
        <FlatList
          ref={episodeListRef}
          data={filteredEpisodes}
          keyExtractor={(ep) => `${ep.vid}-${ep.number}`}
          showsVerticalScrollIndicator={false}
          contentContainerStyle={[{ paddingBottom: 90 }, tvMode && ep_s.tvContainer]}
          initialNumToRender={12}
          maxToRenderPerBatch={10}
          windowSize={9}
          removeClippedSubviews={false}
          ListHeaderComponent={
            <View>
              {/* ── Hero Banner ── */}
              <View style={[ep_s.hero, tvMode && width >= 700 && ep_s.tvHero]}>
                {bannerUri ? (
                  <Image source={{ uri: bannerUri }} style={StyleSheet.absoluteFill} resizeMode="cover" />
                ) : null}
                <LinearGradient
                  colors={["rgba(9,9,11,0.18)", "rgba(9,9,11,0.68)", colors.background]}
                  style={StyleSheet.absoluteFill}
                />

                <View style={ep_s.heroBottom}>
                  <View style={ep_s.heroContent}>
                    <SafePosterImage
                      uri={posterUri}
                      fallbackUris={[anilist?.coverImage?.large, anilist?.bannerImage, initialPoster]}
                      style={ep_s.heroCover}
                      resizeMode="cover"
                    />
                    <View style={ep_s.heroInfo}>
                      <Text style={ep_s.heroTitle} numberOfLines={1}>
                        {displayTitle}
                      </Text>
                      <View style={ep_s.heroBadgesRow}>
                        <View
                          style={[
                            ep_s.heroPill,
                            { backgroundColor: "rgba(16,185,129,0.18)", borderColor: "rgba(16,185,129,0.45)" },
                          ]}
                        >
                          <Ionicons name="volume-high" size={11} color="#10B981" />
                          <Text style={[ep_s.heroPillText, { color: "#10B981" }]}>مدبلج عربي</Text>
                        </View>
                        <View style={ep_s.heroPill}>
                          <Text style={ep_s.heroPillText}>{total} حلقة</Text>
                        </View>
                        {watchedCount > 0 ? (
                          <View style={[ep_s.heroPill, ep_s.heroPillWatched]}>
                            <Text style={[ep_s.heroPillText, { color: "#10B981" }]}>
                              تمت مشاهدة {watchedCount}
                            </Text>
                          </View>
                        ) : null}
                        {score ? (
                          <View style={ep_s.heroPill}>
                            <Ionicons name="star" size={11} color="#38BDF8" />
                            <Text style={ep_s.heroPillText}>{score}</Text>
                          </View>
                        ) : null}
                      </View>
                      <View style={ep_s.heroProgress}>
                        <View style={ep_s.heroProgressLabels}>
                          <Text style={ep_s.heroProgressCount}>تقدم المشاهدة</Text>
                          <Text style={ep_s.heroProgressPercent}>
                            {watchedCount} / {total} ({pct}%)
                          </Text>
                        </View>
                        <View style={[ep_s.progressTrack, ep_s.heroProgressTrack]}>
                          <View style={[ep_s.progressFill, { width: `${pct}%` }]} />
                        </View>
                      </View>
                    </View>
                  </View>
                </View>
              </View>

              {/* ── Controls (Seasons + Quick Watch + Search + Range Chips) ── */}
              <View
                style={[
                  ep_s.controls,
                  tvMode && width >= 700 && ep_s.tvControls,
                  { backgroundColor: colors.background, borderBottomColor: colors.border },
                ]}
              >
                {/* Seasons selector */}
                {seasons.length > 1 && (
                  <View style={ep_s.seasonSection}>
                    <ScrollView
                      horizontal
                      focusable={false}
                      showsHorizontalScrollIndicator={false}
                      contentContainerStyle={ep_s.seasonTabs}
                    >
                      {seasons.map((s) => {
                        const active = s.seasonNumber === selectedSeason;
                        return (
                          <Pressable
                            key={s.seasonNumber}
                            onPress={() => {
                              if (!active) void loadDetail(s.seasonNumber);
                            }}
                            focusable={tvMode}
                            style={({ focused }) => [
                              ep_s.seasonTab,
                              tvMode && ep_s.tvSeasonTab,
                              active && ep_s.seasonTabActive,
                              tvMode && tvFocusStyle(focused),
                            ]}
                          >
                            <Text style={[ep_s.seasonTabTitle, active && ep_s.seasonTabTitleActive]}>
                              {s.label || `الموسم ${s.seasonNumber}`}
                            </Text>
                            {s.episodeCount > 0 ? (
                              <Text style={[ep_s.seasonTabCount, active && ep_s.seasonTabCountActive]}>
                                {s.episodeCount} ح
                              </Text>
                            ) : null}
                          </Pressable>
                        );
                      })}
                    </ScrollView>
                  </View>
                )}

                {/* Quick Watch CTA + Episode Search */}
                <View style={[ep_s.episodeQuickRow, tvMode && ep_s.tvEpisodeQuickRow]}>
                  {nextEpisodeToWatch ? (
                    <Pressable
                      onPress={() => openEpisode(nextEpisodeToWatch)}
                      focusable={tvMode}
                      hasTVPreferredFocus={tvMode}
                      testID={tvMode ? "nova-tv-preferred-focus" : "dubbed-quick-watch"}
                      style={({ focused }) => [
                        ep_s.quickWatchBtn,
                        tvMode && ep_s.tvQuickWatchBtn,
                        tvMode && tvFocusStyle(focused),
                      ]}
                    >
                      <Ionicons name="play" size={14} color="#fff" />
                      <Text style={[ep_s.quickWatchBtnText, tvMode && ep_s.tvQuickWatchBtnText]} numberOfLines={1}>
                        {watchedCount > 0 ? `متابعة ح ${nextEpisodeToWatch.number}` : `ابدأ ح ${nextEpisodeToWatch.number}`}
                      </Text>
                    </Pressable>
                  ) : null}

                  <View style={[ep_s.searchBar, ep_s.quickSearchBar]}>
                    <Ionicons name="search" size={15} color={colors.textMuted} />
                    <TextInput
                      value={search}
                      onChangeText={setSearch}
                      placeholder="ابحث عن رقم أو عنوان الحلقة..."
                      placeholderTextColor={colors.textMuted}
                      style={ep_s.searchInput}
                    />
                    {search.length > 0 ? (
                      <Pressable onPress={() => setSearch("")} focusable={tvMode}>
                        <Ionicons name="close-circle" size={16} color={colors.textMuted} />
                      </Pressable>
                    ) : null}
                  </View>
                </View>

                {/* Range chips (1 - 12, 13 - 24, ...) */}
                {ranges.length > 1 && !search.trim() && (
                  <ScrollView
                    horizontal
                    focusable={false}
                    showsHorizontalScrollIndicator={false}
                    contentContainerStyle={ep_s.rangeChips}
                  >
                    <Pressable
                      onPress={() => setActiveRange(null)}
                      focusable={tvMode}
                      style={({ focused }) => [
                        ep_s.rangeChip,
                        tvMode && ep_s.tvRangeChip,
                        activeRange === null && ep_s.rangeChipActive,
                        tvMode && tvFocusStyle(focused),
                      ]}
                    >
                      <Text style={[ep_s.rangeChipText, activeRange === null && ep_s.rangeChipTextActive]}>
                        الكل ({total})
                      </Text>
                    </Pressable>
                    {ranges.map(([start, end]) => {
                      const isActive = activeRange?.[0] === start && activeRange?.[1] === end;
                      return (
                        <Pressable
                          key={`${start}-${end}`}
                          onPress={() => setActiveRange([start, end])}
                          focusable={tvMode}
                          style={({ focused }) => [
                            ep_s.rangeChip,
                            tvMode && ep_s.tvRangeChip,
                            isActive && ep_s.rangeChipActive,
                            tvMode && tvFocusStyle(focused),
                          ]}
                        >
                          <Text style={[ep_s.rangeChipText, isActive && ep_s.rangeChipTextActive]}>
                            {start} - {end}
                          </Text>
                        </Pressable>
                      );
                    })}
                  </ScrollView>
                )}
              </View>

              {seasonLoading ? (
                <View style={{ paddingVertical: 20, alignItems: "center" }}>
                  <ActivityIndicator size="small" color="#0EA5E9" />
                </View>
              ) : null}
            </View>
          }
          renderItem={({ item: ep, index }) => {
            const isWatched = watchedSet.has(ep.number);
            const thumbUri = bannerUri || posterUri;
            return (
              <View
                style={[
                  ep_s.row,
                  {
                    backgroundColor: isWatched ? "rgba(14,165,233,0.06)" : colors.card,
                    borderColor: isWatched ? "rgba(56,189,248,0.28)" : colors.border,
                  },
                ]}
              >
                <Pressable
                  onPress={() => openEpisode(ep)}
                  focusable={tvMode}
                  onFocus={() => {
                    if (tvMode) {
                      rememberFocus(`ep-${ep.number}`);
                      scrollToFocusedIndex(index);
                    }
                  }}
                  style={({ focused, pressed }) => [
                    ep_s.episodeMain,
                    pressed && { opacity: 0.82 },
                    tvMode && { borderRadius: 12, padding: 4 },
                    tvMode && tvFocusStyle(focused),
                  ]}
                >
                  <View style={ep_s.thumbWrap}>
                    {thumbUri ? (
                      <Image source={{ uri: thumbUri }} style={ep_s.thumb} resizeMode="cover" />
                    ) : (
                      <View style={[ep_s.thumb, ep_s.thumbFallback]} />
                    )}
                    <View style={ep_s.thumbOverlay}>
                      <View
                        style={[
                          ep_s.thumbPlayCircle,
                          isWatched ? ep_s.thumbPlayCircleWatched : ep_s.thumbPlayCircleDefault,
                        ]}
                      >
                        <Ionicons
                          name={isWatched ? "checkmark" : "play"}
                          size={14}
                          color="#fff"
                          style={!isWatched ? { marginLeft: 1 } : undefined}
                        />
                      </View>
                    </View>
                    <View style={ep_s.epNumBadgeOverlay}>
                      <Text style={ep_s.epNumBadgeText}>{ep.numberLabel || ep.number}</Text>
                    </View>
                  </View>

                  <View style={ep_s.info}>
                    <View style={ep_s.epNumRow}>
                      <Text style={ep_s.epNum}>الحلقة {ep.numberLabel || ep.number}</Text>
                      {isWatched ? (
                        <View style={ep_s.watchedBadge}>
                          <Text style={ep_s.watchedBadgeText}>تمت المشاهدة</Text>
                        </View>
                      ) : null}
                    </View>
                    <Text style={ep_s.epTitleAr} numberOfLines={1}>
                      {ep.title || `الحلقة ${ep.number}`}
                    </Text>
                    <Text style={ep_s.epTitleOriginal} numberOfLines={1}>
                      {ep.duration ? `المدة ${ep.duration} · ` : ""}مدبلج عربي
                    </Text>
                  </View>
                </Pressable>

                <View style={ep_s.episodeActions}>
                  <Pressable
                    onPress={() => void toggleWatchedEp(ep.number)}
                    focusable={tvMode}
                    accessibilityRole="button"
                    accessibilityLabel={isWatched ? "إلغاء علامة المشاهدة" : "تحديد كمشاهد"}
                    style={({ focused }) => [
                      ep_s.eyeBtn,
                      isWatched && ep_s.eyeBtnWatched,
                      tvMode && tvFocusStyle(focused),
                    ]}
                  >
                    <Ionicons
                      name={isWatched ? "eye" : "eye-outline"}
                      size={16}
                      color={isWatched ? "#10B981" : colors.textSecondary}
                    />
                  </Pressable>
                </View>
              </View>
            );
          }}
          ListEmptyComponent={
            <View style={{ paddingVertical: 48, alignItems: "center", gap: 8 }}>
              <Ionicons name="film-outline" size={32} color={colors.textMuted} />
              <Text style={{ color: colors.textMuted, fontFamily: "Cairo_600SemiBold", fontSize: 13 }}>
                لا توجد حلقات مطابقة للبحث
              </Text>
            </View>
          }
        />
      </TvFocusGuideView>
    </View>
  );
}

function createEpisodesStyles(colors: ThemePalette) {
  return StyleSheet.create({
    container: { flex: 1, backgroundColor: colors.background },
    center: { flex: 1, alignItems: "center", justifyContent: "center" },
    topBar: {
      minHeight: 56,
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
      gap: 10,
      paddingHorizontal: 14,
      paddingVertical: 6,
      backgroundColor: colors.surface,
      borderBottomWidth: 1,
      borderBottomColor: colors.border,
    },
    tvTopBar: { minHeight: 56, paddingHorizontal: 22 },
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
    tvTopBarBack: { width: 42, height: 42, borderRadius: 12 },
    topBarHeading: { flex: 1, alignItems: "flex-end", justifyContent: "center" },
    topBarTitle: {
      fontSize: 14,
      lineHeight: 20,
      fontFamily: "Cairo_800ExtraBold",
      color: colors.textPrimary,
      textAlign: "right",
    },
    tvTopBarTitle: { fontSize: 16, lineHeight: 23 },
    topBarSubRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 6 },
    topBarSubtitle: { fontSize: 11, fontFamily: "Cairo_600SemiBold", color: colors.textSecondary },
    topBarPctText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "#10B981" },
    topBarLeftTools: { flexDirection: ROW_RTL, alignItems: "center", gap: 6 },
    topBarJumpBtn: {
      width: 32,
      height: 32,
      borderRadius: 10,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
    },
    topBarSort: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 4,
      height: 32,
      paddingHorizontal: 10,
      borderRadius: 10,
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
    },
    tvTopBarSort: { height: 38, paddingHorizontal: 14, borderRadius: 11 },
    topBarSortText: { fontSize: 11, fontFamily: "Cairo_700Bold" },
    hero: { height: 196, justifyContent: "flex-end", overflow: "hidden" },
    tvHero: { height: 220 },
    heroBottom: { paddingHorizontal: 16, paddingBottom: 14 },
    heroContent: { flexDirection: ROW_RTL, alignItems: "flex-end", gap: 14 },
    heroCover: {
      width: 86,
      height: 124,
      borderRadius: 14,
      borderWidth: 1.5,
      borderColor: "rgba(255,255,255,0.16)",
    },
    heroInfo: { flex: 1, alignItems: "flex-end", gap: 7 },
    heroTitle: { fontSize: 18, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "right" },
    heroBadgesRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 7, flexWrap: "wrap" },
    heroPill: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 4,
      paddingHorizontal: 10,
      paddingVertical: 4,
      borderRadius: 10,
      backgroundColor: "rgba(24,24,27,0.78)",
      borderWidth: 1,
      borderColor: "rgba(255,255,255,0.14)",
    },
    heroPillWatched: { backgroundColor: "rgba(16,185,129,0.16)", borderColor: "rgba(16,185,129,0.4)" },
    heroPillText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#fff" },
    heroProgress: { width: "100%", gap: 5, marginTop: 2 },
    heroProgressLabels: { flexDirection: ROW_RTL, alignItems: "center", justifyContent: "space-between" },
    heroProgressPercent: { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
    heroProgressCount: { fontSize: 11, fontFamily: "Cairo_600SemiBold", color: "rgba(255,255,255,0.78)" },
    heroProgressTrack: {
      flex: 0,
      width: "100%",
      height: 6,
      marginBottom: 0,
      backgroundColor: "rgba(255,255,255,0.18)",
      flexDirection: ROW_RTL,
    },
    progressTrack: {
      flex: 1,
      height: 6,
      backgroundColor: colors.surfaceElevated,
      borderRadius: 4,
      overflow: "hidden",
    },
    progressFill: { height: "100%", backgroundColor: "#0EA5E9", borderRadius: 3 },
    controls: {
      backgroundColor: colors.background,
      borderBottomWidth: 1,
      borderBottomColor: colors.border,
      paddingHorizontal: 16,
      paddingTop: 12,
      paddingBottom: 10,
      gap: 10,
    },
    seasonSection: {},
    seasonTabs: { flexDirection: ROW_RTL, gap: 8, paddingHorizontal: 1 },
    seasonTab: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 8,
      paddingHorizontal: 16,
      paddingVertical: 8,
      borderRadius: 22,
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
    },
    seasonTabActive: { backgroundColor: "#0EA5E9", borderColor: "#38BDF8" },
    seasonTabTitle: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
    seasonTabTitleActive: { color: "#fff" },
    seasonTabCount: { fontSize: 11, fontFamily: "Cairo_600SemiBold", color: colors.textSecondary },
    seasonTabCountActive: { color: "rgba(255,255,255,0.9)" },
    episodeQuickRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 10 },
    quickWatchBtn: {
      minHeight: 44,
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "center",
      gap: 7,
      paddingHorizontal: 16,
      borderRadius: 14,
      backgroundColor: "#0EA5E9",
      borderWidth: 1,
      borderColor: "#38BDF8",
    },
    quickWatchBtnText: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
    searchBar: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 8,
      backgroundColor: colors.card,
      borderRadius: 14,
      paddingHorizontal: 14,
      minHeight: 44,
      borderWidth: 1,
      borderColor: colors.border,
    },
    quickSearchBar: { flex: 1, minWidth: 0 },
    searchInput: {
      flex: 1,
      color: colors.textPrimary,
      fontSize: 12,
      fontFamily: "Cairo_600SemiBold",
      textAlign: "right",
      paddingVertical: 0,
    },
    rangeChips: { flexDirection: ROW_RTL, gap: 8, paddingHorizontal: 1 },
    rangeChip: {
      minHeight: 36,
      alignItems: "center",
      justifyContent: "center",
      paddingHorizontal: 16,
      borderRadius: 20,
      borderWidth: 1,
      borderColor: colors.border,
      backgroundColor: colors.card,
    },
    rangeChipActive: { backgroundColor: "#0EA5E9", borderColor: "#38BDF8" },
    rangeChipText: { fontSize: 12, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
    rangeChipTextActive: { color: "#fff" },
    row: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
      gap: 12,
      minHeight: 82,
      marginHorizontal: 16,
      marginVertical: 5,
      paddingHorizontal: 12,
      paddingVertical: 11,
      borderRadius: 16,
      borderWidth: 1,
    },
    episodeMain: { flex: 1, flexDirection: ROW_RTL, alignItems: "center", gap: 12 },
    thumbWrap: {
      width: 96,
      height: 58,
      borderRadius: 11,
      overflow: "hidden",
      backgroundColor: colors.surfaceElevated,
      position: "relative",
    },
    thumb: { width: "100%", height: "100%" },
    thumbFallback: { backgroundColor: "rgba(14,165,233,0.12)" },
    thumbOverlay: {
      ...StyleSheet.absoluteFillObject,
      backgroundColor: "rgba(0,0,0,0.22)",
      alignItems: "center",
      justifyContent: "center",
    },
    thumbPlayCircle: {
      width: 28,
      height: 28,
      borderRadius: 14,
      alignItems: "center",
      justifyContent: "center",
      borderWidth: 1.5,
      borderColor: "rgba(255,255,255,0.65)",
    },
    thumbPlayCircleDefault: { backgroundColor: "rgba(14,165,233,0.88)" },
    thumbPlayCircleWatched: { backgroundColor: "rgba(16,185,129,0.9)" },
    epNumBadgeOverlay: {
      position: "absolute",
      bottom: 4,
      right: 5,
      backgroundColor: "rgba(0,0,0,0.72)",
      borderRadius: 5,
      paddingHorizontal: 5,
      paddingVertical: 1,
    },
    epNumBadgeText: { fontSize: 10, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
    info: { flex: 1, alignItems: "flex-end", gap: 2 },
    episodeActions: { flexDirection: "row", alignItems: "center", gap: 8 },
    epNumRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 8 },
    epNum: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
    watchedBadge: {
      paddingHorizontal: 8,
      paddingVertical: 2,
      borderRadius: 6,
      backgroundColor: "rgba(16,185,129,0.16)",
      borderWidth: 1,
      borderColor: "rgba(16,185,129,0.35)",
    },
    watchedBadgeText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "#10B981" },
    epTitleAr: { fontSize: 12, fontFamily: "Cairo_700Bold", color: colors.textPrimary, textAlign: "right" },
    epTitleOriginal: {
      fontSize: 11,
      fontFamily: "Cairo_400Regular",
      color: colors.textSecondary,
      textAlign: "right",
    },
    eyeBtn: {
      width: 36,
      height: 36,
      borderRadius: 11,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
    },
    eyeBtnWatched: { backgroundColor: "rgba(16,185,129,0.16)", borderColor: "rgba(16,185,129,0.45)" },
    tvContainer: { paddingHorizontal: 28 },
    tvFocusGuide: { flex: 1 },
    tvControls: { paddingHorizontal: 20, paddingTop: 8, paddingBottom: 8, gap: 7 },
    tvEpisodeQuickRow: { gap: 10, marginBottom: 4 },
    tvQuickWatchBtn: { minHeight: 40, maxWidth: 200, paddingHorizontal: 14, borderRadius: 12 },
    tvQuickWatchBtnText: { maxWidth: 170, fontSize: 12, lineHeight: 18 },
    tvRangeChip: { minHeight: 34, paddingHorizontal: 12, borderRadius: 16 },
    tvSeasonTab: { minWidth: 118, paddingHorizontal: 12, paddingVertical: 6, borderRadius: 12 },
  });
}
