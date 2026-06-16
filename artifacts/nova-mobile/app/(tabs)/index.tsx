import { useQuery } from "@tanstack/react-query";
import { useRouter } from "expo-router";
import { LinearGradient } from "expo-linear-gradient";
import { Image } from "expo-image";
import { Ionicons } from "@expo/vector-icons";
import React, { useState, useEffect } from "react";
import {
  Platform, Pressable, RefreshControl, ScrollView,
  StyleSheet, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { AnnouncementBanner } from "@/components/AnnouncementBanner";
import { DrawerMenu } from "@/components/DrawerMenu";
import { HeroSection } from "@/components/HeroSection";
import { SectionRow, SkeletonRow } from "@/components/SectionRow";
import { useColors } from "@/hooks/useColors";
import {
  AIRING_QUERY, AnilistMedia, anilistQuery,
  POPULAR_QUERY, TRENDING_QUERY,
  SEASONAL_QUERY, TOP_RATED_QUERY, MOVIES_QUERY, UPCOMING_QUERY,
  ACTION_QUERY, ROMANCE_QUERY, ISEKAI_QUERY, FANTASY_QUERY,
  getCurrentSeason,
} from "@/utils/anilist";
import { useApp } from "@/context/AppContext";

const TMDB_KEY = "8265bd1679663a7ea12ac168da84d2e8";

type TmdbMovie = {
  id: number;
  title: string;
  poster_path: string | null;
  vote_average: number;
};


const SEASON_AR: Record<string, string> = {
  WINTER: "شتاء", SPRING: "ربيع", SUMMER: "صيف", FALL: "خريف",
};

export default function HomeScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { watchHistory } = useApp();
  const [showDrawer, setShowDrawer] = useState(false);

  const topPad = Platform.OS === "web" ? 67 : insets.top;
  const { season, year } = getCurrentSeason();

  /* TMDB animation movies */
  const [animMovies, setAnimMovies] = useState<TmdbMovie[]>([]);
  useEffect(() => {
    fetch(`https://api.themoviedb.org/3/discover/movie?api_key=${TMDB_KEY}&language=ar&with_genres=16&sort_by=popularity.desc&page=1`)
      .then(r => r.json())
      .then(d => setAnimMovies((d.results || []).slice(0, 12)))
      .catch(() => {});
  }, []);

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

  const { data: upcoming, refetch: refetchU } = useQuery({
    queryKey: ["upcoming"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(UPCOMING_QUERY),
  });

  const { data: actionAnime, refetch: refetchAc } = useQuery({
    queryKey: ["actionAnime"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(ACTION_QUERY),
  });

  const { data: romanceAnime, refetch: refetchRo } = useQuery({
    queryKey: ["romanceAnime"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(ROMANCE_QUERY),
  });

  const { data: isekaiAnime, refetch: refetchIs } = useQuery({
    queryKey: ["isekaiAnime"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(ISEKAI_QUERY),
  });

  const { data: fantasyAnime, refetch: refetchFa } = useQuery({
    queryKey: ["fantasyAnime"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(FANTASY_QUERY),
  });

  const isLoading = loadingT || loadingP || loadingA;

  const trendingList = trending?.Page?.media || [];
  const popularList = popular?.Page?.media || [];
  const airingList = airing?.Page?.media || [];
  const seasonalList = seasonal?.Page?.media || [];
  const topRatedList = topRated?.Page?.media || [];
  const moviesList = movies?.Page?.media || [];
  const upcomingList = upcoming?.Page?.media || [];
  const actionList = actionAnime?.Page?.media || [];
  const romanceList = romanceAnime?.Page?.media || [];
  const isekaiList = isekaiAnime?.Page?.media || [];
  const fantasyList = fantasyAnime?.Page?.media || [];

  const heroItems = trendingList.slice(0, 5).filter((m) => m.bannerImage || m.coverImage.extraLarge);
  const recentHistory = watchHistory.slice(0, 10);

  const refresh = async () => {
    await Promise.all([refetchT(), refetchP(), refetchA(), refetchS(), refetchR(), refetchM(), refetchU(), refetchAc(), refetchRo(), refetchIs(), refetchFa()]);
  };

  return (
    <View style={[styles.container, { backgroundColor: colors.background }]}>
      <ScrollView
        showsVerticalScrollIndicator={false}
        contentContainerStyle={{ paddingBottom: 90 }}
        refreshControl={<RefreshControl refreshing={false} onRefresh={refresh} tintColor={colors.primary} />}
      >
        {/* Header */}
        <View style={[styles.header, { paddingTop: topPad + 12 }]}>
          <View style={styles.logoRow}>
            <LinearGradient colors={["#8B5CF6", "#6D28D9"]} style={styles.logoBadge}>
              <Ionicons name="play" size={14} color="#fff" />
            </LinearGradient>
            <Text style={[styles.logoText, { color: colors.text }]}>
              Anime <Text style={{ color: colors.primary }}>NOVA</Text>
            </Text>
          </View>
          <View style={styles.headerRight}>
            <Pressable onPress={() => router.push("/schedule")} style={styles.iconBtn}>
              <Ionicons name="calendar" size={22} color={colors.mutedForeground} />
            </Pressable>
            <Pressable onPress={() => setShowDrawer(true)} style={styles.iconBtn}>
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
              <Pressable onPress={() => router.push("/(tabs)/library")} style={styles.seeAllBtn}>
                <Text style={[styles.seeAllText, { color: colors.primary }]}>عرض الكل</Text>
                <Ionicons name="chevron-back" size={13} color={colors.primary} />
              </Pressable>
            </View>
            <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={{ paddingHorizontal: 16, gap: 10 }}>
              {recentHistory.map((h) => (
                <Pressable
                  key={`${h.animeId}-${h.ep}`}
                  onPress={() => router.push(`/watch?anime=${h.animeId}&ep=${h.ep}&title=${encodeURIComponent(h.title)}&english=${encodeURIComponent(h.english)}`)}
                  style={[styles.historyCard, { backgroundColor: colors.card, borderColor: colors.border }]}
                >
                  <Image source={{ uri: h.thumbnail }} style={styles.historyImg} contentFit="cover" />
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
              ))}
            </ScrollView>
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
                onSeeAll={() => router.push("/browse")}
              />
              <SectionRow
                title={`🌸 أنمي ${SEASON_AR[season] ?? "الموسم"} ${year}`}
                items={seasonalList}
                size="md"
                onSeeAll={() => router.push("/browse")}
              />
              <SectionRow
                title="📡 يُعرض حالياً"
                items={airingList}
                size="md"
                onSeeAll={() => router.push("/browse")}
              />
              <SectionRow
                title="🏆 الأعلى تقييماً على الإطلاق"
                items={topRatedList}
                size="md"
                onSeeAll={() => router.push("/browse")}
              />
              <SectionRow
                title="⭐ الأكثر شعبية"
                items={popularList}
                size="md"
                onSeeAll={() => router.push("/browse")}
              />
              <SectionRow
                title="🎬 أفلام الأنمي"
                items={moviesList}
                size="md"
                onSeeAll={() => router.push("/browse")}
              />
              {actionList.length > 0 && (
                <SectionRow
                  title="🥊 أنمي أكشن"
                  items={actionList}
                  size="md"
                  onSeeAll={() => router.push("/browse")}
                />
              )}
              {romanceList.length > 0 && (
                <SectionRow
                  title="💕 أنمي رومانسي"
                  items={romanceList}
                  size="md"
                  onSeeAll={() => router.push("/browse")}
                />
              )}
              {isekaiList.length > 0 && (
                <SectionRow
                  title="🌍 أنمي إيسيكاي"
                  items={isekaiList}
                  size="md"
                  onSeeAll={() => router.push("/browse")}
                />
              )}
              {fantasyList.length > 0 && (
                <SectionRow
                  title="✨ أنمي فانتازيا"
                  items={fantasyList}
                  size="md"
                  onSeeAll={() => router.push("/browse")}
                />
              )}
              <SectionRow
                title="🗓️ قريباً"
                items={upcomingList}
                size="md"
                onSeeAll={() => router.push("/browse")}
              />

              {/* TMDB Animation Movies */}
              {animMovies.length > 0 && (
                <View style={{ marginTop: 8 }}>
                  <View style={styles.sectionHeader}>
                    <View style={styles.sectionLeft}>
                      <View style={[styles.sectionDot, { backgroundColor: "#06b6d4" }]} />
                      <Text style={[styles.sectionTitle, { color: colors.text }]}>🎨 أفلام أنيميشن عالمية</Text>
                    </View>
                    <Pressable onPress={() => router.push("/(tabs)/animation" as any)} style={styles.seeAllBtn}>
                      <Text style={[styles.seeAllText, { color: colors.primary }]}>عرض الكل</Text>
                      <Ionicons name="chevron-back" size={13} color={colors.primary} />
                    </Pressable>
                  </View>
                  <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={{ paddingHorizontal: 16, gap: 10 }}>
                    {animMovies.map((m) => {
                      const poster = m.poster_path ? `https://image.tmdb.org/t/p/w300${m.poster_path}` : null;
                      return (
                        <Pressable
                          key={m.id}
                          onPress={() => router.push(`/animation/movie/${m.id}`)}
                          style={[todayStyles.card, { backgroundColor: colors.card, borderColor: colors.border }]}
                        >
                          {poster ? (
                            <Image source={{ uri: poster }} style={todayStyles.img} contentFit="cover" />
                          ) : (
                            <View style={[todayStyles.img, { backgroundColor: colors.card, alignItems: "center", justifyContent: "center" }]}>
                              <Ionicons name="film" size={28} color="rgba(255,255,255,0.2)" />
                            </View>
                          )}
                          <LinearGradient colors={["transparent", "rgba(0,0,0,0.92)"]} style={todayStyles.grad}>
                            <Text style={todayStyles.title} numberOfLines={2}>{m.title}</Text>
                          </LinearGradient>
                        </Pressable>
                      );
                    })}
                  </ScrollView>
                </View>
              )}
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
    width: 30, height: 30, borderRadius: 8,
    alignItems: "center", justifyContent: "center",
  },
  logoText: { fontSize: 20, fontFamily: "Cairo_800ExtraBold" },
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
