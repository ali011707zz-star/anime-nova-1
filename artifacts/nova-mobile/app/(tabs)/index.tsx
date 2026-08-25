import { useQuery } from "@tanstack/react-query";
import { useFocusEffect, useRouter } from "expo-router";
import { LinearGradient } from "expo-linear-gradient";
import { FlatList, Image, useWindowDimensions } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import React, { useState, useEffect, useCallback, useMemo } from "react";
import {
  Platform, Pressable, RefreshControl, ScrollView,
  StyleSheet, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { AnnouncementBanner } from "@/components/AnnouncementBanner";
import { DrawerMenu } from "@/components/DrawerMenu";
import { HeroSection } from "@/components/HeroSection";
import { SectionRow, SkeletonRow } from "@/components/SectionRow";
import { getRailCardWidth, getRailSidePadding } from "@/components/AnimeCard";
import { useColors } from "@/hooks/useColors";
import {
  AIRING_QUERY, AnilistMedia, anilistQuery,
  POPULAR_QUERY, TRENDING_QUERY,
  SEASONAL_QUERY, TOP_RATED_QUERY, MOVIES_QUERY,
  ISEKAI_QUERY, SPRING_2026_QUERY, FALL_2025_QUERY,
  fetchAllTodayEpisodes, formatAiringTime,
  getCurrentSeason,
} from "@/utils/anilist";
import { useApp } from "@/context/AppContext";
import { getBaseUrl } from "@/utils/api";
import { isTvDevice, tvFocusStyle } from "@/utils/tv";
import { getPosterUri } from "@/utils/media";

const SEASON_AR: Record<string, string> = {
  WINTER: "شتاء", SPRING: "ربيع", SUMMER: "صيف", FALL: "خريف",
};

function randomSample<T>(items: T[], limit = items.length): T[] {
  const shuffled = [...items];
  for (let i = shuffled.length - 1; i > 0; i -= 1) {
    const j = Math.floor(Math.random() * (i + 1));
    [shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]];
  }
  return shuffled.slice(0, limit);
}

export default function HomeScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { watchHistory } = useApp();
  const { width, height } = useWindowDimensions();
  const [showDrawer, setShowDrawer] = useState(false);

  const topPad = Platform.OS === "web" ? 0 : insets.top;
  const { season, year } = getCurrentSeason();

  /* TMDB animation movies — disabled (section hidden) */
  const [animMovies] = useState<TmdbMovie[]>([]);

  const { data: trending, isLoading: loadingT, refetch: refetchT } = useQuery({
    queryKey: ["trending"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(TRENDING_QUERY, { page: 1 }),
  });

  const { data: popular, isLoading: loadingP, refetch: refetchP } = useQuery({
    queryKey: ["popular"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(POPULAR_QUERY, { page: 1 }),
  });

  const { data: airing, isLoading: loadingA, refetch: refetchA } = useQuery({
    queryKey: ["airing"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(AIRING_QUERY),
  });

  const { data: seasonal, refetch: refetchS } = useQuery({
    queryKey: ["seasonal", season, year],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(SEASONAL_QUERY, { season, year }),
  });

  const { data: topRated, refetch: refetchR } = useQuery({
    queryKey: ["topRated"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(TOP_RATED_QUERY),
  });

  const { data: movies, refetch: refetchM } = useQuery({
    queryKey: ["animeMovies"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(MOVIES_QUERY),
  });

  const { data: spring2026, refetch: refetchSpring } = useQuery({
    queryKey: ["spring2026"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(SPRING_2026_QUERY),
  });

  const { data: fall2025, refetch: refetchFall } = useQuery({
    queryKey: ["fall2025"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(FALL_2025_QUERY),
  });

  const { data: isekai, refetch: refetchIsekai } = useQuery({
    queryKey: ["isekai"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(ISEKAI_QUERY),
  });

  /* أحدث الحلقات — نفس كتالوج AnimeSlayer المستخدم في الويب. */
  type TodayEp = {
    animeId: number;
    anslayerId: number;
    name: string;
    romaji?: string;
    english?: string;
    native?: string;
    titleVariants?: string[];
    titleAr?: string;
    episode: number;
    cover: string;
    year?: string;
  };
  const [todayEps, setTodayEps] = useState<TodayEp[]>([]);
  const [todayChecking, setTodayChecking] = useState(true);
  useEffect(() => {
    const ctrl = new AbortController();
    AsyncStorage.getItem("nova-latest-episodes").then((stored) => {
      try {
        const parsed = JSON.parse(stored || "[]");
        if (Array.isArray(parsed) && parsed.length) setTodayEps(parsed);
      } catch {}
    }).catch(() => {});
    fetch(`${getBaseUrl()}/api/anime/anslayer-latest`, { signal: ctrl.signal })
      .then(r => r.json())
      .then((payload: TodayEp[] | { items?: TodayEp[] }) => {
        if (ctrl.signal.aborted) return;
        const raw = Array.isArray(payload) ? payload : payload.items || [];
        const normalized = raw
          .map((item: any) => ({
            ...item,
            /* Keep the AniList id separate from AnimeSlayer's id. KW and
               other AniList-based sources use this value on latest cards. */
            animeId: Number(item.anilistId ?? item.animeId ?? item.anilist_id ?? 0),
            anslayerId: Number(item.anslayerId ?? item.animeId ?? item.anilistId ?? 0),
            name: String(item.name ?? item.title ?? "").trim(),
            titleAr: String(item.titleAr ?? item.arabicTitle ?? "").trim(),
            cover: String(item.cover ?? item.poster ?? "").trim(),
            romaji: String(item.romaji ?? "").trim(),
            english: String(item.english ?? "").trim(),
            native: String(item.native ?? "").trim(),
            titleVariants: Array.isArray(item.titleVariants)
              ? item.titleVariants.filter((value: unknown): value is string => typeof value === "string" && value.trim().length > 1)
              : [],
          }))
          .filter((item) => item.animeId > 0 && item.name && item.episode != null);
         if (normalized.length) {
           setTodayEps(normalized);
           AsyncStorage.setItem("nova-latest-episodes", JSON.stringify(normalized)).catch(() => {});
         }
         setTodayChecking(false);
      })
      .catch((e) => { if (e?.name !== "AbortError") console.warn("[Home] anslayer-latest fetch error"); setTodayChecking(false); });
    return () => ctrl.abort();
  }, []);

  const isLoading = loadingT || loadingP || loadingA;

  /* ── Dubbed cartoon catalog ── */
  const BASE_URL = getBaseUrl();
  const [dubbedSeries, setDubbedSeries] = useState<any[]>([]);
  const refreshDubbed = useCallback(async (forceRefresh = false) => {
    const refresh = forceRefresh ? "&refresh=1" : "";
    fetch(`${BASE_URL}/api/dubbed/catalog?page=1${refresh}`, {
      cache: forceRefresh ? "no-store" : "default",
    })
      .then(r => r.json())
      .then(d => setDubbedSeries((d.results || d.items || d.series || []).slice(0, 14)))
      .catch((e) => { if (e?.name !== "AbortError") console.warn("[Home] dubbed/catalog fetch error"); });
  }, [BASE_URL]);
  useEffect(() => { void refreshDubbed(); }, [refreshDubbed]);
  useFocusEffect(useCallback(() => {
    void refreshDubbed();
  }, [refreshDubbed]));

  /* ── أنيميشن مدبلج (aw-dubbed) catalog ── */
  const [awDubbedSeries, setAwDubbedSeries] = useState<any[]>([]);
  useEffect(() => {
    const ctrl = new AbortController();
    fetch(`${BASE_URL}/api/aw-dubbed/catalog?page=1`, { signal: ctrl.signal })
      .then(r => r.json())
      .then(d => { if (!ctrl.signal.aborted) setAwDubbedSeries(d.results || []); })
      .catch((e) => { if (e?.name !== "AbortError") console.warn("[Home] aw-dubbed/catalog fetch error"); });
    return () => ctrl.abort();
  }, []);


  const trendingList = trending?.Page?.media || [];
  const popularList = popular?.Page?.media || [];
  const airingList = airing?.Page?.media || [];
  const seasonalList = seasonal?.Page?.media || [];
  const topRatedList = topRated?.Page?.media || [];
  const moviesList = movies?.Page?.media || [];
  const spring2026List = spring2026?.Page?.media || [];
  const fall2025List = fall2025?.Page?.media || [];
  const isekaiList = isekai?.Page?.media || [];

  /* الويب يبني الـHero من الأكثر شعبية ذات الـbanner، وليس من TRENDING. */
  /* Randomize from the full popular catalog so the hero is not fixed to the
     same first four titles on every client. */
  const heroItems = useMemo(
    () => randomSample(popularList.filter((m) => m.bannerImage), 8),
    [popularList],
  );
  const recentHistory = watchHistory.slice(0, 10);
  const isTvLayout = isTvDevice(width, height);
  const railCardWidth = getRailCardWidth(width, isTvLayout ? 5 : 3);
  const railSidePadding = getRailSidePadding(width);
  const railGap = 10;

  const refresh = async () => {
    await Promise.all([
      refetchT(), refetchP(), refetchA(), refetchS(), refetchR(), refetchM(),
      refetchSpring(), refetchFall(), refetchIsekai(),
      refreshDubbed(true),
    ]);
  };

  return (
    <View style={[styles.container, { backgroundColor: colors.background }]}>
      <ScrollView
        showsVerticalScrollIndicator={false}
        contentContainerStyle={{ paddingBottom: 90 }}
        refreshControl={<RefreshControl refreshing={false} onRefresh={refresh} tintColor={colors.primary} />}
      >
        {/* Header */}
        <View style={[styles.header, { paddingTop: topPad + 6 }]}>
          <View style={styles.logoRow}>
            <LinearGradient colors={["#8B5CF6", "#6D28D9"]} style={styles.logoBadge}>
              <Ionicons name="play" size={10} color="#fff" />
            </LinearGradient>
            <Text style={[styles.logoText, { color: colors.text }]}>
              Anime <Text style={{ color: colors.primary }}>NOVA</Text>
            </Text>
          </View>
          <View style={styles.headerRight}>
             <Pressable
               onPress={() => setShowDrawer(true)}
               focusable={isTvLayout}
               hitSlop={isTvLayout ? 10 : 6}
               style={({ focused }) => [styles.iconBtn, isTvLayout && tvFocusStyle(focused)]}
             >
              <Ionicons name="menu" size={26} color={colors.text} />
            </Pressable>
          </View>
        </View>

        <AnnouncementBanner />

        {/* Hero */}
        {isLoading ? (
          <View style={{ height: 420, backgroundColor: colors.card }} />
        ) : (
          <HeroSection items={heroItems} />
        )}

        {/* Continue Watching */}
        {recentHistory.length > 0 && (
          <View style={{ marginTop: 24 }}>
            <View style={styles.sectionHeader}>
              <View style={styles.sectionLeft}>
                <View style={[styles.sectionDot, { backgroundColor: "#22c55e" }]} />
                <Text style={[styles.sectionTitle, { color: colors.text }]}>متابعة المشاهدة</Text>
              </View>
               <Pressable
                 onPress={() => router.push("/(tabs)/library")}
                 focusable={isTvLayout}
                 style={({ focused }) => [styles.seeAllBtn, isTvLayout && tvFocusStyle(focused)]}
               >
                <Text style={[styles.seeAllText, { color: colors.primary }]}>عرض الكل</Text>
                <Ionicons name="chevron-back" size={13} color={colors.primary} />
              </Pressable>
            </View>
            <FlatList
              data={recentHistory}
              horizontal
              keyExtractor={(h) => `${h.animeId}-${h.ep}`}
              showsHorizontalScrollIndicator={false}
               contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
              renderItem={({ item: h }) => (
                 <Pressable
                  onPress={() => router.push(`/watch?anime=${h.animeId}&ep=${h.ep}&title=${encodeURIComponent(h.title)}&english=${encodeURIComponent(h.english)}${h.thumbnail ? `&cover=${encodeURIComponent(h.thumbnail)}` : ""}`)}
                   focusable={isTvLayout}
                   style={({ focused }) => [styles.historyCard, { width: railCardWidth, height: Math.round(railCardWidth * 0.7), backgroundColor: colors.card, borderColor: colors.border }, isTvLayout && tvFocusStyle(focused)]}
                >
                  <Image source={{ uri: h.thumbnail || `https://img.anili.st/media/${h.animeId}` }} style={styles.historyImg} resizeMode="cover" />
                  <LinearGradient colors={["transparent", "rgba(0,0,0,0.9)"]} style={styles.historyGrad}>
                    <Text style={styles.historyEp}>حلقة {h.ep}</Text>
                    <Text style={styles.historyTitle} numberOfLines={1}>{h.english || h.title}</Text>
                    {h.position && h.duration && (
                      <View style={styles.historyProgress}>
                        <View style={[styles.historyProgressFill, { width: `${Math.min((h.position / h.duration) * 100, 100)}%`, backgroundColor: colors.primary }]} />
                      </View>
                    )}
                  </LinearGradient>
                  <View style={styles.playOverlay}>
                    <Ionicons name="play-circle" size={28} color="rgba(255,255,255,0.85)" />
                  </View>
                </Pressable>
              )}
              initialNumToRender={5}
              maxToRenderPerBatch={5}
              windowSize={3}
              removeClippedSubviews={false}
            />
          </View>
        )}

        {/* أحدث الحلقات — AnimeSlayer (مطابق للويب) */}
        {(todayEps.length > 0 || todayChecking) && (
          <View style={{ marginTop: 24 }}>
            <View style={styles.sectionHeader}>
              <View style={styles.sectionLeft}>
                <View style={[styles.sectionDot, { backgroundColor: "#f43f5e" }]} />
                <Text style={[styles.sectionTitle, { color: colors.text }]}>📺 أحدث الحلقات</Text>
              </View>
              <Pressable onPress={() => router.push("/schedule" as any)} style={styles.seeAllBtn}>
                <Text style={[styles.seeAllText, { color: colors.primary }]}>عرض المزيد</Text>
                <Ionicons name="chevron-back" size={13} color={colors.primary} />
              </Pressable>
            </View>
            <FlatList
              data={todayEps}
              horizontal
              keyExtractor={(ep) => `${ep.animeId}-${ep.episode}`}
              showsHorizontalScrollIndicator={false}
               contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
              renderItem={({ item: ep }) => (
                /* بطاقة أحدث الحلقات تمرر anslayerId كمرجع احتياطي لـ AS،
                   لكن صفحة المشاهدة تفحص كل المصادر المتاحة مثل الويب. */
                 <Pressable
                  onPress={() => router.push(`/watch?anime=${ep.animeId}&ep=${ep.episode}&title=${encodeURIComponent(ep.romaji || ep.name || "")}&english=${encodeURIComponent(ep.english || "")}&native=${encodeURIComponent(ep.native || "")}&titles=${encodeURIComponent(JSON.stringify(ep.titleVariants || []))}&cover=${encodeURIComponent(ep.cover || "")}&titleAr=${encodeURIComponent(ep.titleAr || "")}&anslayerId=${ep.anslayerId}` as any)}
                   focusable={isTvLayout}
                   style={({ focused }) => [todayEpStyles.card, { width: railCardWidth, height: Math.round(railCardWidth * 1.46), backgroundColor: colors.card, borderColor: colors.border }, isTvLayout && tvFocusStyle(focused)]}
                >
                  {ep.cover ? (
                   <Image source={{ uri: getPosterUri(ep, ep.animeId ? `https://img.anili.st/media/${ep.animeId}` : "") }} style={todayEpStyles.img} resizeMode="cover" />
                  ) : (
                    <View style={[todayEpStyles.img, { backgroundColor: colors.card, alignItems: "center", justifyContent: "center" }]}>
                      <Ionicons name="tv" size={28} color="rgba(255,255,255,0.2)" />
                    </View>
                  )}
                  <LinearGradient colors={["transparent", "rgba(0,0,0,0.95)"]} style={todayEpStyles.grad}>
                    <Text style={todayEpStyles.ep}>حلقة {ep.episode}</Text>
                    <Text style={todayEpStyles.title} numberOfLines={2}>{ep.name}</Text>
                  </LinearGradient>
                </Pressable>
              )}
              initialNumToRender={5}
              maxToRenderPerBatch={5}
              windowSize={3}
              removeClippedSubviews={false}
            />
          </View>
        )}

        {/* ── الأقسام المدبلجة — مباشرة بعد أحدث الحلقات ── */}
        {awDubbedSeries.length > 0 && (
          <View style={{ marginTop: 24, marginBottom: 24 }}>
            <View style={styles.sectionHeader}>
              <View style={styles.sectionLeft}>
                <View style={[styles.sectionDot, { backgroundColor: "#06b6d4" }]} />
                <Text style={[styles.sectionTitle, { color: colors.text }]}>✨ أنيميشن مدبلج</Text>
              </View>
              <Pressable style={styles.seeAllBtn} onPress={() => router.push("/aw-dubbed" as any)}>
                <Text style={[styles.seeAllText, { color: colors.primary }]}>عرض الكل</Text>
                <Ionicons name="chevron-back" size={13} color={colors.primary} />
              </Pressable>
            </View>
            <FlatList
              data={awDubbedSeries}
              horizontal
              keyExtractor={(item: any, idx) => String(item.key || idx)}
              showsHorizontalScrollIndicator={false}
               contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
              renderItem={({ item }: { item: any }) => {
                 const imgUri = getPosterUri(item);
                return (
                   <Pressable
                    onPress={() => {
                      const key = String(item.key || "").trim();
                      if (!key) return;
                      const seasons = JSON.stringify(
                        Array.isArray(item.seasons) && item.seasons.length
                          ? item.seasons
                          : [{ label: "الحلقات", animeId: key }],
                      );
                      router.push({
                        pathname: "/aw-dubbed/[key]" as any,
                        params: {
                          key: encodeURIComponent(key),
                          title: item.title || "",
                          titleAr: item.titleAr || "",
                          seasons: encodeURIComponent(seasons),
                          poster: encodeURIComponent(imgUri || ""),
                        },
                      });
                     }}
                     focusable={isTvLayout}
                     style={({ focused }) => [todayStyles.card, { width: railCardWidth, height: Math.round(railCardWidth * 1.46), backgroundColor: colors.card, borderColor: colors.border }, isTvLayout && tvFocusStyle(focused)]}
                  >
                    {imgUri ? (
                      <Image source={{ uri: imgUri }} style={todayStyles.img} resizeMode="cover" />
                    ) : (
                      <View style={[todayStyles.img, { backgroundColor: colors.card, alignItems: "center", justifyContent: "center" }]}>
                        <Ionicons name="film-outline" size={28} color="rgba(255,255,255,0.2)" />
                      </View>
                    )}
                    <LinearGradient colors={["transparent", "rgba(0,0,0,0.92)"]} style={todayStyles.grad}>
                      <Text style={todayStyles.title} numberOfLines={2}>{item.titleAr || item.title}</Text>
                    </LinearGradient>
                  </Pressable>
                );
              }}
              initialNumToRender={5}
              maxToRenderPerBatch={5}
              windowSize={3}
              removeClippedSubviews={false}
            />
          </View>
        )}

        {dubbedSeries.length > 0 && (
          <View style={{ marginBottom: 24 }}>
            <View style={styles.sectionHeader}>
              <View style={styles.sectionLeft}>
                <View style={[styles.sectionDot, { backgroundColor: "#f59e0b" }]} />
                <Text style={[styles.sectionTitle, { color: colors.text }]}>🎬 كرتون مدبلج عربي</Text>
              </View>
              <Pressable style={styles.seeAllBtn} onPress={() => router.push("/dubbed" as any)}>
                <Text style={[styles.seeAllText, { color: colors.primary }]}>عرض الكل</Text>
                <Ionicons name="chevron-back" size={13} color={colors.primary} />
              </Pressable>
            </View>
            <FlatList
              data={dubbedSeries}
              horizontal
              keyExtractor={(item: any, idx) => String(item.key || item.id || idx)}
              showsHorizontalScrollIndicator={false}
               contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
              renderItem={({ item }: { item: any }) => {
                const rawImg = getPosterUri(item);
                const imgUri = rawImg
                  ? rawImg.startsWith("http") ? rawImg : `${BASE_URL}${rawImg}`
                  : null;
                return (
                   <Pressable
                    onPress={() => {
                      const seasons = JSON.stringify(item.seasons || [{ label: "الحلقات", arabicToonsId: item.arabicToonsId }]);
                      router.push({ pathname: "/dubbed/[id]" as any, params: { id: item.key || item.id || item.title, title: item.title, seasons, img: rawImg } });
                     }}
                     focusable={isTvLayout}
                     style={({ focused }) => [todayStyles.card, { width: railCardWidth, height: Math.round(railCardWidth * 1.46), backgroundColor: colors.card, borderColor: colors.border }, isTvLayout && tvFocusStyle(focused)]}
                  >
                    {imgUri ? (
                      <Image source={{ uri: imgUri }} style={todayStyles.img} resizeMode="cover" />
                    ) : (
                      <View style={[todayStyles.img, { backgroundColor: colors.card, alignItems: "center", justifyContent: "center" }]}>
                        <Ionicons name="tv" size={28} color="rgba(255,255,255,0.2)" />
                      </View>
                    )}
                    <LinearGradient colors={["transparent", "rgba(0,0,0,0.92)"]} style={todayStyles.grad}>
                      <Text style={todayStyles.title} numberOfLines={2}>{item.title}</Text>
                    </LinearGradient>
                  </Pressable>
                );
              }}
              initialNumToRender={5}
              maxToRenderPerBatch={5}
              windowSize={3}
              removeClippedSubviews={false}
            />
          </View>
        )}

        <View style={{ marginTop: 24 }}>
          {isLoading ? (
            <>
              <SkeletonRow />
              <SkeletonRow />
              <SkeletonRow />
            </>
          ) : (
            <>
              <SectionRow
                title="🔥 رائج الآن"
                items={trendingList}
                size="md"
                onSeeAll={() => router.push({ pathname: "/browse", params: { sort: "TRENDING_DESC" } } as any)}
              />
              <SectionRow
                title={`🌸 أنمي ${SEASON_AR[season] ?? "الموسم"} ${year}`}
                items={seasonalList}
                size="md"
                onSeeAll={() => router.push({ pathname: "/browse", params: { sort: "POPULARITY_DESC", season, year: String(year) } } as any)}
              />
              <SectionRow
                title="🌸 أنمي ربيع 2026"
                items={spring2026List}
                size="md"
                onSeeAll={() => router.push({ pathname: "/browse", params: { sort: "POPULARITY_DESC", season: "SPRING", year: "2026" } } as any)}
              />
              <SectionRow
                title="🍂 أنمي خريف 2025"
                items={fall2025List}
                size="md"
                onSeeAll={() => router.push({ pathname: "/browse", params: { sort: "POPULARITY_DESC", season: "FALL", year: "2025" } } as any)}
              />
              <SectionRow
                title="📡 يُعرض حالياً"
                items={airingList}
                size="md"
                onSeeAll={() => router.push({ pathname: "/browse", params: { status: "RELEASING", sort: "POPULARITY_DESC" } } as any)}
              />
              <SectionRow
                title="🏆 الأعلى تقييماً على الإطلاق"
                items={topRatedList}
                size="md"
                onSeeAll={() => router.push({ pathname: "/browse", params: { sort: "SCORE_DESC" } } as any)}
              />
              <SectionRow
                title="⭐ الأكثر شعبية"
                items={popularList}
                size="md"
                onSeeAll={() => router.push({ pathname: "/browse", params: { sort: "POPULARITY_DESC" } } as any)}
              />
              <SectionRow
                title="🎬 أفلام الأنمي"
                items={moviesList}
                size="md"
                onSeeAll={() => router.push({ pathname: "/browse", params: { format: "MOVIE", sort: "POPULARITY_DESC" } } as any)}
              />
              <SectionRow
                title="🌀 إيسيكاي"
                items={isekaiList}
                size="md"
                onSeeAll={() => router.push({ pathname: "/browse", params: { genre: "Isekai", genreAr: "إيسيكاي", sort: "POPULARITY_DESC" } } as any)}
              />

              {/* TMDB Animation Movies — disabled */}

            </>
          )}
        </View>
      </ScrollView>
      <DrawerMenu visible={showDrawer} onClose={() => setShowDrawer(false)} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1 },
  header: {
    flexDirection: "row", alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 16, paddingBottom: 8,
  },
  logoRow: { flexDirection: "row", alignItems: "center", gap: 8 },
  logoBadge: {
    width: 22, height: 22, borderRadius: 6,
    alignItems: "center", justifyContent: "center",
  },
  logoText: { fontSize: 15, fontFamily: "Cairo_800ExtraBold" },
  headerRight: { flexDirection: "row", alignItems: "center", gap: 4 },
  iconBtn: { padding: 6 },
  sectionHeader: {
    flexDirection: "row", alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 16, marginBottom: 12,
  },
  sectionLeft: { flexDirection: "row", alignItems: "center", gap: 8 },
  sectionDot: { width: 8, height: 8, borderRadius: 4 },
  sectionTitle: { fontSize: 16, fontFamily: "Cairo_700Bold" },
  seeAllBtn: { flexDirection: "row", alignItems: "center", gap: 2 },
  seeAllText: { fontSize: 13, fontFamily: "Cairo_600SemiBold" },
  historyCard: {
    width: 150, height: 105, borderRadius: 12,
    overflow: "hidden", borderWidth: 1, position: "relative",
  },
  historyImg: { width: "100%", height: "100%" },
  historyGrad: {
    position: "absolute", bottom: 0, left: 0, right: 0,
    padding: 8, gap: 2,
  },
  historyEp: { color: "#8B5CF6", fontSize: 10, fontFamily: "Cairo_700Bold" },
  historyTitle: { color: "#fff", fontSize: 11, fontFamily: "Cairo_600SemiBold" },
  historyProgress: {
    height: 2, backgroundColor: "rgba(255,255,255,0.2)",
    borderRadius: 1, marginTop: 2,
  },
  historyProgressFill: { height: 2, borderRadius: 1 },
  playOverlay: {
    position: "absolute", top: 8, right: 8,
  },
});

const todayStyles = StyleSheet.create({
  card: {
    width: 130, height: 190, borderRadius: 12,
    overflow: "hidden", borderWidth: 1, position: "relative",
  },
  img: { width: "100%", height: "100%" },
  grad: {
    position: "absolute", bottom: 0, left: 0, right: 0,
    paddingHorizontal: 8, paddingBottom: 8, paddingTop: 40,
  },
  title: {
    color: "#fff", fontSize: 11, fontFamily: "Cairo_600SemiBold", lineHeight: 15,
  },
});

const todayEpStyles = StyleSheet.create({
  card: {
    width: 120, height: 175, borderRadius: 12,
    overflow: "hidden", borderWidth: 1, position: "relative",
  },
  img: { width: "100%", height: "100%" },
  grad: {
    position: "absolute", bottom: 0, left: 0, right: 0,
    paddingHorizontal: 8, paddingBottom: 8, paddingTop: 50,
  },
  ep: { color: "#f43f5e", fontSize: 10, fontFamily: "Cairo_700Bold" },
  title: {
    color: "#fff", fontSize: 10, fontFamily: "Cairo_600SemiBold", lineHeight: 14, marginTop: 2,
  },
  time: { color: "rgba(255,255,255,0.5)", fontSize: 9, fontFamily: "Cairo_400Regular", marginTop: 3 },
});

