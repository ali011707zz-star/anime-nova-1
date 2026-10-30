import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useLocalSearchParams } from "expo-router";
import React, { useCallback, useEffect, useState } from "react";
import {
  ActivityIndicator,
  Image,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { CatalogPageHeader } from "@/components/CatalogPageHeader";
import type { CatalogMedia } from "@/components/MediaCatalogGrid";
import { useColors } from "@/hooks/useColors";
import { anilistQuery } from "@/utils/anilist";

type MangaDetail = CatalogMedia & {
  description?: string | null;
  genres?: string[];
};

const MANGA_DETAIL_QUERY = `
query NovaMangaDetail($id: Int!) {
  Media(id: $id, type: MANGA) {
    id
    title { romaji english native }
    coverImage { large extraLarge }
    averageScore chapters volumes status format countryOfOrigin
    startDate { year }
    genres
    description(asHtml: false)
  }
}`;

function statusLabel(status?: string) {
  if (status === "RELEASING") return "مستمرة";
  if (status === "FINISHED") return "مكتملة";
  if (status === "HIATUS") return "متوقفة";
  return "غير محددة";
}

export default function MangaDetailScreen() {
  const colors = useColors();
  const { id } = useLocalSearchParams<{ id: string }>();
  const [manga, setManga] = useState<MangaDetail | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(false);

  const loadManga = useCallback(async (signal: AbortSignal) => {
    const numericId = Number(id);
    if (!Number.isInteger(numericId) || numericId <= 0) {
      setError(true);
      setLoading(false);
      return;
    }
    setLoading(true);
    setError(false);
    try {
      const data = await anilistQuery<{ Media?: MangaDetail }>(
        MANGA_DETAIL_QUERY,
        { id: numericId },
        { signal, timeoutMs: 20_000 },
      );
      setManga(data?.Media || null);
      setError(!data?.Media);
    } catch (requestError: any) {
      if (requestError?.name !== "AbortError") setError(true);
    } finally {
      if (!signal.aborted) setLoading(false);
    }
  }, [id]);

  useEffect(() => {
    const controller = new AbortController();
    void loadManga(controller.signal);
    return () => controller.abort();
  }, [loadManga]);

  const title = manga?.title_ar || manga?.title?.english || manga?.title?.romaji || "تفاصيل المانجا";
  const cover = manga?.coverImage?.extraLarge || manga?.coverImage?.large;

  return (
    <View style={[styles.screen, { backgroundColor: colors.background }]}>
      <CatalogPageHeader title={title} />
      {loading ? (
        <View style={styles.center}>
          <ActivityIndicator size="large" color={colors.homeAccent} />
        </View>
      ) : error || !manga ? (
        <View style={styles.center}>
          <Ionicons name="cloud-offline-outline" size={30} color={colors.textMuted} />
          <Text style={[styles.errorText, { color: colors.textSecondary }]}>تعذر تحميل تفاصيل المانجا</Text>
        </View>
      ) : (
        <ScrollView contentContainerStyle={styles.content} showsVerticalScrollIndicator={false}>
          <View style={styles.hero}>
            {cover ? <Image source={{ uri: cover }} style={StyleSheet.absoluteFill} resizeMode="cover" /> : null}
            <LinearGradient colors={["transparent", "rgba(0,0,0,0.92)"]} style={StyleSheet.absoluteFill} />
            <View style={styles.heroText}>
              <Text style={styles.heroTitle} numberOfLines={3}>{title}</Text>
              {manga.title?.english && manga.title.english !== title ? (
                <Text style={styles.heroSubtitle} numberOfLines={2}>{manga.title.english}</Text>
              ) : null}
            </View>
          </View>

          <View style={[styles.infoCard, { backgroundColor: colors.surface, borderColor: colors.border }]}>
            <InfoRow label="الحالة" value={statusLabel(manga.status)} colors={colors} />
            <InfoRow label="الفصول" value={manga.chapters ? String(manga.chapters) : "غير معروف"} colors={colors} />
            <InfoRow label="المجلدات" value={manga.volumes ? String(manga.volumes) : "غير معروف"} colors={colors} />
            <InfoRow label="التقييم" value={manga.averageScore ? `${(manga.averageScore / 10).toFixed(1)} / 10` : "غير متوفر"} colors={colors} />
            <InfoRow label="سنة النشر" value={manga.startDate?.year ? String(manga.startDate.year) : "غير معروفة"} colors={colors} />
          </View>

          {manga.genres?.length ? (
            <View style={styles.genreRow}>
              {manga.genres.slice(0, 6).map((genre) => (
                <View key={genre} style={[styles.genrePill, { backgroundColor: colors.surface, borderColor: colors.border }]}>
                  <Text style={[styles.genreText, { color: colors.textSecondary }]}>{genre}</Text>
                </View>
              ))}
            </View>
          ) : null}

          {manga.description ? (
            <View style={styles.descriptionBlock}>
              <Text style={[styles.descriptionHeading, { color: colors.textPrimary }]}>نبذة</Text>
              <Text style={[styles.description, { color: colors.textSecondary }]}>
                {manga.description.replace(/<[^>]*>/g, "").replace(/&#39;/g, "'").replace(/&quot;/g, '"')}
              </Text>
            </View>
          ) : null}
        </ScrollView>
      )}
    </View>
  );
}

function InfoRow({ label, value, colors }: { label: string; value: string; colors: ReturnType<typeof useColors> }) {
  return (
    <View style={[styles.infoRow, { borderBottomColor: colors.border }]}>
      <Text style={[styles.infoValue, { color: colors.textPrimary }]}>{value}</Text>
      <Text style={[styles.infoLabel, { color: colors.textMuted }]}>{label}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  screen: { flex: 1 },
  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
  errorText: { fontSize: 14, fontFamily: "Cairo_600SemiBold" },
  content: { paddingBottom: 110 },
  hero: { height: 330, margin: 16, borderRadius: 18, overflow: "hidden", backgroundColor: "#16181d" },
  heroText: { position: "absolute", bottom: 18, left: 18, right: 18, alignItems: "flex-end" },
  heroTitle: { color: "#fff", fontSize: 22, textAlign: "right", fontFamily: "Cairo_800ExtraBold" },
  heroSubtitle: { color: "rgba(255,255,255,0.78)", fontSize: 14, textAlign: "right", marginTop: 4 },
  infoCard: { marginHorizontal: 16, borderWidth: 1, borderRadius: 16, paddingHorizontal: 14 },
  infoRow: { minHeight: 45, flexDirection: "row", justifyContent: "space-between", alignItems: "center", borderBottomWidth: StyleSheet.hairlineWidth },
  infoValue: { fontSize: 13, fontFamily: "Cairo_700Bold" },
  infoLabel: { fontSize: 12, fontFamily: "Cairo_600SemiBold" },
  genreRow: { flexDirection: "row", flexWrap: "wrap", gap: 8, marginHorizontal: 16, marginTop: 14 },
  genrePill: { borderWidth: 1, paddingHorizontal: 10, paddingVertical: 5, borderRadius: 14 },
  genreText: { fontSize: 11, fontFamily: "Cairo_600SemiBold" },
  descriptionBlock: { marginHorizontal: 18, marginTop: 20 },
  descriptionHeading: { textAlign: "right", fontSize: 17, marginBottom: 8, fontFamily: "Cairo_700Bold" },
  description: { textAlign: "right", fontSize: 13, lineHeight: 23, fontFamily: "Cairo_400Regular" },
});
