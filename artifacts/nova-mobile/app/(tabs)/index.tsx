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
import CommentsSheet from "@/components/CommentsSheet";

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
  const [newsComment, setNewsComment] = useState<{ animeId: number; ep: number; title: string } | null>(null);

  const topPad = Platform.OS === "web" ? 0 : insets.top;
  const { season, year } = getCurrentSeason();

  /* TMDB animation movies */
  const [animMovies, setAnimMovies] = useState<TmdbMovie[]>([]);
  useEffect(() => {
    fetch(`https://api.themoviedb.org/3/discover/movie?api_key=${TMDB_KEY}&language=ar&with_genres=16&with_original_language=ja&with_origin_country=JP&include_adult=false&sort_by=popularity.desc&page=1`)
      .then(r => r.json())
      .then(d => setAnimMovies((d.results || []).filter((m: any) => m.original_language === 'ja').slice(0, 12)))
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

  /* حلقات اليوم — جلب كل الصفحات مثل تطبيق الويب */
  const todayStart = (() => {
    const d = new Date(); d.setHours(0, 0, 0, 0); return Math.floor(d.getTime() / 1000);
  })();
  const todayEnd = todayStart + 86399;

  type TodayEp = { episode: number; airingAt: number; media: { id: number; title: { romaji: string; english: string | null }; coverImage: { large: string }; averageScore: number | null; popularity: number } };
  const [todayEps, setTodayEps] = useState<TodayEp[]>([]);
  useEffect(() => {
    let cancelled = false;
    fetchAllTodayEpisodes(todayStart, todayEnd).then(eps => {
      if (!cancelled) {
        const ADULT_GENRES = new Set(["Hentai"]);
        const filtered = eps
          .filter((e: any) => {
            if (!e.media?.id || e.media?.isAdult) return false;
            if (e.media?.countryOfOrigin && e.media.countryOfOrigin !== "JP") return false;
            if (e.media.title.romaji?.toLowerCase().includes("(")) return false;
            const genres: string[] = e.media?.genres || [];
            return !genres.some((g: string) => ADULT_GENRES.has(g));
          })
          .sort((a: any, b: any) => b.airingAt - a.airingAt);
        setTodayEps(filtered);
      }
    }).catch(() => {});
    return () => { cancelled = true; };
  }, [todayStart]);

  const isLoading = loadingT || loadingP || loadingA;

  /* ── Dubbed cartoon catalog ── */
  const BASE_URL = getBaseUrl();
  const [dubbedSeries, setDubbedSeries] = useState<any[]>([]);
  useEffect(() => {
    fetch(`${BASE_URL}/api/dubbed/catalog?page=1`)
      .then(r => r.json())
      .then(d => setDubbedSeries((d.series || []).slice(0, 14)))
      .catch(() => {});
  }, []);

  /* ── حلقات مؤكدة من AnimeWitcher — قسم الأخبار ── */
  const [recentAiring, setRecentAiring] = useState<any[]>([]);
  useEffect(() => {
    fetch(`${BASE_URL}/api/anime/new-episodes`)
      .then(r => r.json())
      .then((data: any[]) => {
        if (Array.isArray(data)) setRecentAiring(data.slice(0, 10));
      })
      .catch(() => {});
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

        {/* حلقات اليوم */}
        {todayEps.length > 0 && (
          <View style={{ marginTop: 24 }}>
            <View style={styles.sectionHeader}>
              <View style={styles.sectionLeft}>
                <View style={[styles.sectionDot, { backgroundColor: "#f43f5e" }]} />
                <Text style={[styles.sectionTitle, { color: colors.text }]}>📅 حلقات اليوم</Text>
              </View>
              <Pressable onPress={() => router.push("/schedule" as any)} style={styles.seeAllBtn}>
                <Text style={[styles.seeAllText, { color: colors.primary }]}>الجدول الكامل</Text>
                <Ionicons name="chevron-back" size={13} color={colors.primary} />
              </Pressable>
            </View>
            <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={{ paddingHorizontal: 16, gap: 10 }}>
              {todayEps.map((ep) => (
                <Pressable
                  key={`${ep.media.id}-${ep.episode}`}
                  onPress={() => router.push(`/watch?anilistId=${ep.media.id}&ep=${ep.episode}&title=${encodeURIComponent(ep.media.title.romaji)}&english=${encodeURIComponent(ep.media.title.english || ep.media.title.romaji)}&cover=${encodeURIComponent(ep.media.coverImage.large)}` as any)}
                  style={[todayEpStyles.card, { backgroundColor: colors.card, borderColor: colors.border }]}
                >
                  <Image source={{ uri: ep.media.coverImage.large }} style={todayEpStyles.img} resizeMode="cover" />
                  <LinearGradient colors={["transparent", "rgba(0,0,0,0.95)"]} style={todayEpStyles.grad}>
                    <Text style={todayEpStyles.ep}>حلقة {ep.episode}</Text>
                    <Text style={todayEpStyles.title} numberOfLines={2}>{ep.media.title.english || ep.media.title.romaji}</Text>
                    <Text style={todayEpStyles.time}>{formatAiringTime(ep.airingAt)}</Text>
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

              {/* TMDB Animation Movies */}
              {animMovies.length > 0 && (
                <View style={{ marginTop: 8 }}>
                  <View style={styles.sectionHeader}>
                    <View style={styles.sectionLeft}>
                      <View style={[styles.sectionDot, { backgroundColor: "#06b6d4" }]} />
                      <Text style={[styles.sectionTitle, { color: colors.text }]}>🎨 أفلام أنيميشن عالمية</Text>
                    </View>
                    <Pressable onPress={() => router.push("/(tabs)/animations" as any)} style={styles.seeAllBtn}>
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
                          onPress={() => router.push(`/animation/movie/${m.id}` as any)}
                          style={[todayStyles.card, { backgroundColor: colors.card, borderColor: colors.border }]}
                        >
                          {poster ? (
                            <Image source={{ uri: poster }} style={todayStyles.img} resizeMode="cover" />
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


              {/* ── Dubbed Cartoons Section ── */}
              {dubbedSeries.length > 0 && (
                <View style={{ marginBottom: 24 }}>
                  <View style={styles.sectionHeader}>
                    <View style={styles.sectionLeft}>
                      <View style={[styles.sectionDot, { backgroundColor: "#f59e0b" }]} />
                      <Text style={[styles.sectionTitle, { color: colors.text }]}>🎬 كرتون مدبلج عربي</Text>
                    </View>
                    <Pressable style={styles.seeAllBtn} onPress={() => router.push("/dubbed" as any)}>
                      <Text style={[styles.seeAllText, { color: colors.primary }]}>عرض المزيد</Text>
                      <Ionicons name="chevron-back" size={13} color={colors.primary} />
                    </Pressable>
                  </View>
                  <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={{ paddingHorizontal: 16, gap: 10 }}>
                    {dubbedSeries.map((item: any, idx: number) => (
                      <Pressable
                        key={item.id || idx}
                        onPress={() => router.push({ pathname: "/dubbed/[seriesId]" as any, params: { seriesId: item.id, title: item.title } })}
                        style={[todayStyles.card, { backgroundColor: colors.card, borderColor: colors.border }]}
                      >
                        {item.poster ? (
                          <Image source={{ uri: item.poster }} style={todayStyles.img} resizeMode="cover" />
                        ) : (
                          <View style={[todayStyles.img, { backgroundColor: colors.card, alignItems: "center", justifyContent: "center" }]}>
                            <Ionicons name="tv" size={28} color="rgba(255,255,255,0.2)" />
                          </View>
                        )}
                        <LinearGradient colors={["transparent", "rgba(0,0,0,0.92)"]} style={todayStyles.grad}>
                          <Text style={todayStyles.title} numberOfLines={2}>{item.title}</Text>
                        </LinearGradient>
                      </Pressable>
                    ))}
                  </ScrollView>
                </View>
              )}

              {/* ── أخبار الأنمي Section ── */}
              {recentAiring.length > 0 && (
                <View style={{ marginBottom: 24, paddingHorizontal: 16 }}>
                  <View style={[styles.sectionHeader, { paddingHorizontal: 0 }]}>
                    <View style={styles.sectionLeft}>
                      <View style={[styles.sectionDot, { backgroundColor: "#f59e0b" }]} />
                      <Text style={[styles.sectionTitle, { color: colors.text }]}>📰 آخر أخبار الأنمي</Text>
                    </View>
                    <Pressable style={styles.seeAllBtn} onPress={() => router.push("/(tabs)/news" as any)}>
                      <Text style={[styles.seeAllText, { color: colors.primary }]}>المزيد</Text>
                      <Ionicons name="chevron-back" size={13} color={colors.primary} />
                    </Pressable>
                  </View>
                  <View style={{ gap: 10 }}>
                    {recentAiring.slice(0, 6).map((ep: any, idx: number) => {
                      const diffSec = Date.now() / 1000 - ep.airingAt;
                      const timeLabel = diffSec < 3600
                        ? `منذ ${Math.floor(diffSec / 60)} دقيقة`
                        : diffSec < 86400
                          ? `منذ ${Math.floor(diffSec / 3600)} ساعة`
                          : `منذ ${Math.floor(diffSec / 86400)} يوم`;
                      const views = ep.popularity
                        ? ep.popularity > 1000 ? `${(ep.popularity / 1000).toFixed(1)}K` : String(ep.popularity)
                        : "0";
                      const newsTitle = `تم بث الحلقة ${ep.episode} من أنمي "${ep.title}"`;
                      return (
                        <Pressable
                          key={ep.anilistId + "-" + idx}
                          onPress={() => router.push(`/anime/${ep.anilistId}` as any)}
                          style={[newsCardStyles.card, { backgroundColor: colors.card, borderColor: colors.border }]}
                        >
                          {/* Text content on the left */}
                          <View style={newsCardStyles.content}>
                            <View style={newsCardStyles.tagsRow}>
                              <View style={newsCardStyles.badge}>
                                <Text style={newsCardStyles.badgeText}>
                                  {ep.format === "TV" ? "مسلسل" : ep.format === "MOVIE" ? "فيلم" : "أنمي"}
                                </Text>
                              </View>
                              {ep.averageScore ? (
                                <Text style={newsCardStyles.score}>⭐ {(ep.averageScore / 10).toFixed(1)}</Text>
                              ) : null}
                              <View style={[newsCardStyles.badge, { backgroundColor: "rgba(34,197,94,0.15)", borderColor: "rgba(34,197,94,0.3)" }]}>
                                <Text style={[newsCardStyles.badgeText, { color: "#4ade80" }]}>✓ AW</Text>
                              </View>
                            </View>
                            <Text style={[newsCardStyles.title, { color: colors.text }]} numberOfLines={3}>{newsTitle}</Text>
                            <View style={newsCardStyles.metaRow}>
                              <View style={newsCardStyles.metaItem}>
                                <Ionicons name="eye-outline" size={11} color="rgba(255,255,255,0.4)" />
                                <Text style={newsCardStyles.metaText}>{views} مشاهدة</Text>
                              </View>
                              <Text style={newsCardStyles.metaDot}>·</Text>
                              <Pressable
                                onPress={(e) => { e.stopPropagation(); setNewsComment({ animeId: ep.anilistId, ep: ep.episode, title: ep.title }); }}
                                style={newsCardStyles.metaItem}
                              >
                                <Ionicons name="chatbubble-outline" size={11} color="#a78bfa" />
                                <Text style={[newsCardStyles.metaText, { color: "#a78bfa" }]}>تعليق</Text>
                              </Pressable>
                              <Text style={newsCardStyles.metaDot}>·</Text>
                              <View style={newsCardStyles.metaItem}>
                                <Ionicons name="time-outline" size={11} color="rgba(255,255,255,0.4)" />
                                <Text style={newsCardStyles.metaText}>{timeLabel}</Text>
                              </View>
                            </View>
                          </View>
                          {/* Thumbnail on the right */}
                          <View style={newsCardStyles.thumbWrap}>
                            <Image
                              source={{ uri: ep.poster || ep.anilistPoster }}
                              style={newsCardStyles.thumb}
                              resizeMode="cover"
                            />
                          </View>
                        </Pressable>
                      );
                    })}
                  </View>
                </View>
              )}

            </>
          )}
        </View>
      </ScrollView>
      <DrawerMenu visible={showDrawer} onClose={() => setShowDrawer(false)} />
      {newsComment && (
        <CommentsSheet
          visible={!!newsComment}
          onClose={() => setNewsComment(null)}
          animeId={newsComment.animeId}
          episodeNumber={newsComment.ep}
          title={newsComment.title}
        />
      )}
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

const newsCardStyles = StyleSheet.create({
  card: {
    flexDirection: "row",
    borderRadius: 14,
    borderWidth: 1,
    overflow: "hidden",
    padding: 10,
    gap: 10,
    alignItems: "center",
  },
  content: {
    flex: 1,
    gap: 5,
  },
  tagsRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: 6,
  },
  badge: {
    backgroundColor: "rgba(139,92,246,0.18)",
    borderRadius: 6,
    paddingHorizontal: 7,
    paddingVertical: 2,
    borderWidth: 1,
    borderColor: "rgba(139,92,246,0.3)",
  },
  badgeText: {
    color: "#a78bfa",
    fontSize: 9,
    fontFamily: "Cairo_700Bold",
  },
  score: {
    color: "#facc15",
    fontSize: 9,
    fontFamily: "Cairo_700Bold",
  },
  title: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
    lineHeight: 18,
  },
  metaRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: 5,
    flexWrap: "wrap",
  },
  metaItem: {
    flexDirection: "row",
    alignItems: "center",
    gap: 3,
  },
  metaText: {
    color: "rgba(255,255,255,0.4)",
    fontSize: 9,
    fontFamily: "Cairo_400Regular",
  },
  metaDot: {
    color: "rgba(255,255,255,0.2)",
    fontSize: 10,
  },
  thumbWrap: {
    width: 70,
    height: 95,
    borderRadius: 10,
    overflow: "hidden",
    flexShrink: 0,
  },
  thumb: {
    width: "100%",
    height: "100%",
  },
});
