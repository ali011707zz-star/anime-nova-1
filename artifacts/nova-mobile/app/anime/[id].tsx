import { useQuery } from "@tanstack/react-query";
import { Ionicons } from "@expo/vector-icons";
import { Image } from "expo-image";
import { LinearGradient } from "expo-linear-gradient";
import * as Haptics from "expo-haptics";
import { useLocalSearchParams, useRouter } from "expo-router";
import React, { useState } from "react";
import {
  ActivityIndicator, Dimensions, Platform, Pressable,
  ScrollView, StyleSheet, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { AnilistMedia, anilistQuery, DETAIL_QUERY, stripHtml } from "@/utils/anilist";
import { useApp } from "@/context/AppContext";

const { width: W } = Dimensions.get("window");

export default function AnimeDetailScreen() {
  const { id, title: titleParam, english: englishParam } = useLocalSearchParams<{ id: string; title: string; english: string }>();
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { isFavorite, toggleFavorite } = useApp();
  const [expanded, setExpanded] = useState(false);

  const { data, isLoading } = useQuery({
    queryKey: ["anime", id],
    queryFn: () => anilistQuery<{ Media: AnilistMedia }>(DETAIL_QUERY, { id: parseInt(id) }),
    enabled: !!id,
  });

  const anime = data?.Media;
  const topPad = Platform.OS === "web" ? 67 : insets.top;
  const isFav = anime ? isFavorite(anime.id) : false;

  const handleFavorite = async () => {
    if (!anime) return;
    await Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Light);
    await toggleFavorite({
      id: anime.id,
      title: anime.title.romaji,
      english: anime.title.english || "",
      thumbnail: anime.coverImage.extraLarge || anime.coverImage.large,
      episodes: anime.episodes,
      score: anime.averageScore,
      addedAt: Date.now(),
    });
  };

  const STATUS_MAP: Record<string, string> = {
    RELEASING: "يُعرض الآن",
    FINISHED: "مكتمل",
    NOT_YET_RELEASED: "لم يُعرض بعد",
    CANCELLED: "ملغي",
    HIATUS: "موقوف",
  };
  const FORMAT_MAP: Record<string, string> = {
    TV: "مسلسل", MOVIE: "فيلم", OVA: "OVA", ONA: "ONA", SPECIAL: "خاص", MUSIC: "موسيقى",
  };

  if (isLoading) {
    return (
      <View style={[styles.container, { backgroundColor: colors.background }]}>
        <View style={{ paddingTop: topPad + 12, paddingHorizontal: 16 }}>
          <Pressable onPress={() => router.back()}>
            <Ionicons name="arrow-back" size={24} color={colors.text} />
          </Pressable>
        </View>
        <View style={styles.center}>
          <ActivityIndicator color={colors.primary} size="large" />
        </View>
      </View>
    );
  }

  if (!anime) return null;

  const description = stripHtml(anime.description);
  const title = anime.title.english || anime.title.romaji;
  const studio = anime.studios?.nodes?.[0]?.name;
  const mainChars = anime.characters?.edges?.slice(0, 6) || [];
  const relations = anime.relations?.edges?.filter((r) => ["SEQUEL", "PREQUEL", "SIDE_STORY"].includes(r.relationType)) || [];

  return (
    <View style={[styles.container, { backgroundColor: colors.background }]}>
      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={{ paddingBottom: 100 }}>
        {/* Banner / Cover */}
        <View style={{ height: 300 }}>
          <Image
            source={{ uri: anime.bannerImage || anime.coverImage.extraLarge || anime.coverImage.large }}
            style={StyleSheet.absoluteFill}
            contentFit="cover"
          />
          <LinearGradient
            colors={["rgba(9,9,11,0.3)", "rgba(9,9,11,0.6)", "#09090B"]}
            style={StyleSheet.absoluteFill}
          />
          {/* Back btn */}
          <Pressable
            onPress={() => router.back()}
            style={[styles.backBtn, { top: topPad + 8 }]}
          >
            <Ionicons name="arrow-back" size={22} color="#fff" />
          </Pressable>
          {/* Favorite btn */}
          <Pressable
            onPress={handleFavorite}
            style={[styles.favBtn, { top: topPad + 8, backgroundColor: isFav ? colors.primary + "30" : "rgba(0,0,0,0.4)" }]}
          >
            <Ionicons name={isFav ? "heart" : "heart-outline"} size={22} color={isFav ? colors.primary : "#fff"} />
          </Pressable>
        </View>

        {/* Cover + Info Row */}
        <View style={styles.infoRow}>
          <Image
            source={{ uri: anime.coverImage.extraLarge || anime.coverImage.large }}
            style={[styles.cover, { borderColor: colors.border }]}
            contentFit="cover"
          />
          <View style={styles.infoText}>
            <Text style={[styles.titleAr, { color: colors.text }]} numberOfLines={3}>{title}</Text>
            {anime.title.native && (
              <Text style={[styles.titleNative, { color: colors.mutedForeground }]} numberOfLines={1}>{anime.title.native}</Text>
            )}
            <View style={styles.badgeRow}>
              <View style={[styles.badge, { backgroundColor: colors.primary + "20", borderColor: colors.primary + "40" }]}>
                <Text style={[styles.badgeText, { color: colors.primary }]}>{FORMAT_MAP[anime.format] || anime.format}</Text>
              </View>
              <View style={[styles.badge, { backgroundColor: colors.card, borderColor: colors.border }]}>
                <Text style={[styles.badgeText, { color: colors.mutedForeground }]}>{STATUS_MAP[anime.status] || anime.status}</Text>
              </View>
            </View>
            <View style={styles.statsRow}>
              {anime.averageScore && (
                <View style={styles.statItem}>
                  <Ionicons name="star" size={13} color="#FFD700" />
                  <Text style={[styles.statText, { color: colors.text }]}>{(anime.averageScore / 10).toFixed(1)}</Text>
                </View>
              )}
              {anime.episodes && (
                <View style={styles.statItem}>
                  <Ionicons name="play-circle-outline" size={13} color={colors.mutedForeground} />
                  <Text style={[styles.statText, { color: colors.mutedForeground }]}>{anime.episodes} حلقة</Text>
                </View>
              )}
            </View>
            {studio && (
              <Text style={[styles.studio, { color: colors.mutedForeground }]}>🎬 {studio}</Text>
            )}
          </View>
        </View>

        {/* Action Buttons */}
        <View style={styles.actionRow}>
          <Pressable
            onPress={() => router.push(`/episodes/${anime.id}?title=${encodeURIComponent(anime.title.romaji)}&english=${encodeURIComponent(anime.title.english || "")}&ep=1`)}
            style={[styles.watchBtn, { backgroundColor: colors.primary }]}
          >
            <Ionicons name="play" size={18} color="#fff" />
            <Text style={styles.watchBtnText}>مشاهدة الآن</Text>
          </Pressable>
          <Pressable
            onPress={handleFavorite}
            style={[styles.favActionBtn, { backgroundColor: colors.card, borderColor: colors.border }]}
          >
            <Ionicons name={isFav ? "heart" : "heart-outline"} size={18} color={isFav ? colors.primary : colors.mutedForeground} />
            <Text style={[styles.favActionText, { color: isFav ? colors.primary : colors.mutedForeground }]}>
              {isFav ? "في المفضلة" : "أضف للمفضلة"}
            </Text>
          </Pressable>
        </View>

        {/* Genres */}
        {anime.genres?.length > 0 && (
          <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={styles.genreScroll}>
            {anime.genres.map((g) => (
              <View key={g} style={[styles.genreChip, { backgroundColor: colors.card, borderColor: colors.border }]}>
                <Text style={[styles.genreText, { color: colors.mutedForeground }]}>{g}</Text>
              </View>
            ))}
          </ScrollView>
        )}

        {/* Description */}
        {description ? (
          <View style={styles.section}>
            <Text style={[styles.sectionTitle, { color: colors.text }]}>القصة</Text>
            <Text
              style={[styles.description, { color: colors.mutedForeground }]}
              numberOfLines={expanded ? undefined : 4}
            >
              {description}
            </Text>
            {description.length > 200 && (
              <Pressable onPress={() => setExpanded(!expanded)}>
                <Text style={[styles.readMore, { color: colors.primary }]}>
                  {expanded ? "عرض أقل" : "عرض المزيد"}
                </Text>
              </Pressable>
            )}
          </View>
        ) : null}

        {/* Characters */}
        {mainChars.length > 0 && (
          <View style={styles.section}>
            <Text style={[styles.sectionTitle, { color: colors.text }]}>الشخصيات الرئيسية</Text>
            <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={{ paddingHorizontal: 16, gap: 12 }}>
              {mainChars.map((edge, i) => (
                <View key={i} style={styles.charCard}>
                  <Image
                    source={{ uri: edge.node.image.large }}
                    style={[styles.charImg, { borderColor: colors.border }]}
                    contentFit="cover"
                  />
                  <Text style={[styles.charName, { color: colors.text }]} numberOfLines={2}>
                    {edge.node.name.full}
                  </Text>
                </View>
              ))}
            </ScrollView>
          </View>
        )}

        {/* Relations */}
        {relations.length > 0 && (
          <View style={styles.section}>
            <Text style={[styles.sectionTitle, { color: colors.text }]}>ذات صلة</Text>
            <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={{ paddingHorizontal: 16, gap: 10 }}>
              {relations.map((rel, i) => (
                <Pressable
                  key={i}
                  onPress={() => router.push(`/anime/${rel.node.id}?title=${encodeURIComponent(rel.node.title.romaji)}&english=`)}
                  style={styles.relCard}
                >
                  <Image
                    source={{ uri: rel.node.coverImage.large }}
                    style={[styles.relImg, { borderRadius: 10, borderColor: colors.border }]}
                    contentFit="cover"
                  />
                  <Text style={[styles.relType, { color: colors.primary }]}>
                    {rel.relationType === "SEQUEL" ? "تكملة" : rel.relationType === "PREQUEL" ? "مقدمة" : "قصة جانبية"}
                  </Text>
                  <Text style={[styles.relTitle, { color: colors.text }]} numberOfLines={2}>{rel.node.title.romaji}</Text>
                </Pressable>
              ))}
            </ScrollView>
          </View>
        )}
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1 },
  center: { flex: 1, alignItems: "center", justifyContent: "center" },
  backBtn: { position: "absolute", left: 16, backgroundColor: "rgba(0,0,0,0.5)", borderRadius: 20, padding: 8 },
  favBtn: { position: "absolute", right: 16, borderRadius: 20, padding: 8 },
  infoRow: { flexDirection: "row", paddingHorizontal: 16, marginTop: -60, gap: 14, alignItems: "flex-end" },
  cover: { width: 110, height: 160, borderRadius: 12, borderWidth: 2 },
  infoText: { flex: 1, paddingBottom: 8, gap: 6 },
  titleAr: { fontSize: 16, fontFamily: "Cairo_700Bold", lineHeight: 22 },
  titleNative: { fontSize: 12, fontFamily: "Cairo_400Regular" },
  badgeRow: { flexDirection: "row", gap: 6, flexWrap: "wrap" },
  badge: { borderRadius: 6, paddingHorizontal: 8, paddingVertical: 3, borderWidth: 1 },
  badgeText: { fontSize: 11, fontFamily: "Cairo_600SemiBold" },
  statsRow: { flexDirection: "row", gap: 12 },
  statItem: { flexDirection: "row", alignItems: "center", gap: 4 },
  statText: { fontSize: 12, fontFamily: "Cairo_600SemiBold" },
  studio: { fontSize: 11, fontFamily: "Cairo_400Regular" },
  actionRow: { flexDirection: "row", paddingHorizontal: 16, marginTop: 16, gap: 10 },
  watchBtn: { flex: 1, flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 8, paddingVertical: 13, borderRadius: 12 },
  watchBtnText: { color: "#fff", fontFamily: "Cairo_700Bold", fontSize: 15 },
  favActionBtn: { flexDirection: "row", alignItems: "center", gap: 6, paddingVertical: 13, paddingHorizontal: 16, borderRadius: 12, borderWidth: 1 },
  favActionText: { fontFamily: "Cairo_600SemiBold", fontSize: 13 },
  genreScroll: { paddingHorizontal: 16, gap: 8, marginTop: 16, alignItems: "center" },
  genreChip: { paddingHorizontal: 12, paddingVertical: 6, borderRadius: 16, borderWidth: 1 },
  genreText: { fontSize: 12, fontFamily: "Cairo_400Regular" },
  section: { paddingHorizontal: 16, marginTop: 20 },
  sectionTitle: { fontSize: 16, fontFamily: "Cairo_700Bold", marginBottom: 10 },
  description: { fontSize: 13, lineHeight: 22, fontFamily: "Cairo_400Regular", textAlign: "right" },
  readMore: { marginTop: 6, fontSize: 13, fontFamily: "Cairo_600SemiBold" },
  charCard: { width: 70, alignItems: "center", gap: 6 },
  charImg: { width: 60, height: 80, borderRadius: 30, borderWidth: 1 },
  charName: { fontSize: 10, textAlign: "center", fontFamily: "Cairo_400Regular", lineHeight: 14 },
  relCard: { width: 100, gap: 4 },
  relImg: { width: 100, height: 140, borderWidth: 1 },
  relType: { fontSize: 10, fontFamily: "Cairo_600SemiBold" },
  relTitle: { fontSize: 11, fontFamily: "Cairo_400Regular", lineHeight: 15 },
});
