import { useQuery } from "@tanstack/react-query";
import { useRouter } from "expo-router";
import { LinearGradient } from "expo-linear-gradient";
import { Image } from "react-native";
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
  SEASONAL_QUERY, TOP_RATED_QUERY, MOVIES_QUERY,
  fetchAllTodayEpisodes, formatAiringTime,
  getCurrentSeason,
} from "@/utils/anilist";
import { useApp } from "@/context/AppContext";
import { getBaseUrl } from "@/utils/api";

const SEASON_AR: Record<string, string> = {
  WINTER: "شتاء", SPRING: "ربيع", SUMMER: "صيف", FALL: "خريف",
};

export default function HomeScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { watchHistory } = useApp();
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

  /* أحدث الحلقات — مباشرةً من كتالوج anslayer نفسه (نفس مصدر تطبيق الويب تماماً،
     بدلاً من جدول بث AniList) لضمان تطابق الحلقات المعروضة بين الويب والموبايل. */
  type TodayEp = { animeId: number; name: string; episode: number; cover: string; year?: string };
  const [todayEps, setTodayEps] = useState<TodayEp[]>([]);
  useEffect(() => {
    let cancelled = false;
    fetch(`${getBaseUrl()}/api/anime/anslayer-latest`)
      .then(r => r.json())
      .then((d: { items?: TodayEp[] }) => {
        if (!cancelled) setTodayEps(d.items || []);
      }).catch(() => {});
    return () => { cancelled = true; };
  }, []);

  const isLoading = loadingT || loadingP || loadingA;

  /* ── Dubbed cartoon catalog ── */
  const BASE_URL = getBaseUrl();
  const [dubbedSeries, setDubbedSeries] = useState<any[]>([]);
  useEffect(() => {
    let cancelled = false;
    fetch(`${BASE_URL}/api/dubbed/catalog?page=1`)
      .then(r => r.json())
      .then(d => { if (!cancelled) setDubbedSeries((d.results || d.items || d.series || []).slice(0, 14)); })
      .catch(() => {});
    return () => { cancelled = true; };
  }, []);

  /* ── أنيميشن مدبلج (aw-dubbed) catalog ── */
  const [awDubbedSeries, setAwDubbedSeries] = useState<any[]>([]);
  useEffect(() => {
    let cancelled = false;
    fetch(`${BASE_URL}/api/aw-dubbed/catalog?page=1`)
      .then(r => r.json())
      .then(d => { if (!cancelled) setAwDubbedSeries((d.results || []).slice(0, 10)); })
      .catch(() => {});
    return () => { cancelled = true; };
  }, []);


  const trendingList = trending?.Page?.media || [];
  const popularList = popular?.Page?.media || [];
  const airingList = airing?.Page?.media || [];
  const seasonalList = seasonal?.Page?.media || [];
  const topRatedList = topRated?.Page?.media || [];
  const moviesList = movies?.Page?.media || [];

  const heroItems = trendingList.slice(0, 5).filter((m) => m.bannerImage || m.coverImage.extraLarge);
  const recentHistory = watchHistory.slice(0, 10);

  const refresh = async () => {
    await Promise.all([refetchT(), refetchP(), refetchA(), refetchS(), refetchR(), refetchM()]);
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
                  onPress={() => router.push(`/watch?anime=${h.animeId}&ep=${h.ep}&title=${encodeURIComponent(h.title)}&english=${encodeURIComponent(h.english)}${h.thumbnail ? `&cover=${encodeURIComponent(h.thumbnail)}` : ""}`)}
                  style={[styles.historyCard, { backgroundColor: colors.card, borderColor: colors.border }]}
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
              ))}
            </ScrollView>
          </View>
        )}

        {/* أحدث الحلقات — نفس مصدر anslayer المستخدم على الويب */}
        {todayEps.length > 0 && (
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
            <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={{ paddingHorizontal: 16, gap: 10 }}>
              {todayEps.map((ep, i) => (
                <Pressable
                  key={`${ep.animeId}-${ep.episode}-${i}`}
                  onPress={() => router.push(`/watch?anime=0&ep=${ep.episode}&title=${encodeURIComponent(ep.name || "")}&english=${encodeURIComponent(ep.name || "")}&cover=${encodeURIComponent(ep.cover || "")}&site=anslayer&anslayerId=${ep.animeId}&single=1` as any)}
                  style={[todayEpStyles.card, { backgroundColor: colors.card, borderColor: colors.border }]}
                >
                  {ep.cover ? (
                    <Image source={{ uri: ep.cover }} style={todayEpStyles.img} resizeMode="cover" />
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

              {/* TMDB Animation Movies — disabled */}

              {/* ── أنيميشن مدبلج (aw-dubbed) Section — فوق كرتون مدبلج ── */}
              {awDubbedSeries.length > 0 && (
                <View style={{ marginBottom: 24 }}>
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
                  <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={{ paddingHorizontal: 16, gap: 10 }}>
                    {awDubbedSeries.map((item: any, idx: number) => {
                      const imgUri = item.poster || null;
                      return (
                        <Pressable
                          key={item.key || idx}
                          onPress={() => {
                            const seasons = JSON.stringify(item.seasons || [{ label: "الحلقات", animeId: item.key }]);
                            router.push({
                              pathname: "/aw-dubbed/[key]" as any,
                              params: {
                                key: encodeURIComponent(item.key || ""),
                                title: item.title || "",
                                titleAr: item.titleAr || "",
                                seasons: encodeURIComponent(seasons),
                                poster: encodeURIComponent(imgUri || ""),
                              },
                            });
                          }}
                          style={[todayStyles.card, { backgroundColor: colors.card, borderColor: colors.border }]}
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
                    })}
                  </ScrollView>
                </View>
              )}

              {/* ── Dubbed Cartoons Section ── */}
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
                  <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={{ paddingHorizontal: 16, gap: 10 }}>
                    {dubbedSeries.map((item: any, idx: number) => {
                      const rawImg = item.image || item.poster || "";
                      const imgUri = rawImg
                        ? rawImg.startsWith("http") ? rawImg : `${BASE_URL}${rawImg}`
                        : null;
                      return (
                        <Pressable
                          key={item.key || item.id || idx}
                          onPress={() => {
                            const seasons = JSON.stringify(item.seasons || [{ label: "الحلقات", arabicToonsId: item.arabicToonsId }]);
                            router.push({ pathname: "/dubbed/[id]" as any, params: { id: item.key || item.id || item.title, title: item.title, seasons, img: rawImg } });
                          }}
                          style={[todayStyles.card, { backgroundColor: colors.card, borderColor: colors.border }]}
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

