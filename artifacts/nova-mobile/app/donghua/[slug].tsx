import React, { useState, useEffect, useCallback, useMemo } from "react";
import {
  View,
  Text,
  ScrollView,
  TextInput,
  ActivityIndicator,
  StyleSheet,
  Platform,
  I18nManager,
  useWindowDimensions,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { SafePosterImage } from "@/components/SafePosterImage";
import { useColors } from "@/hooks/useColors";
import { TvPressable as Pressable, tvFocusStyle, useTvMetrics } from "@/utils/tv";
import { getPrimaryCtaMetrics } from "@/utils/responsiveUiLogic.mjs";
import { fetchDonghuaDetail } from "@/utils/donghuaClient";
import type { DonghuaDetail, DonghuaEpisodeItem, DonghuaSourceId } from "@/utils/donghuaLogic.mjs";
import type { ThemePalette } from "@/constants/colors";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

function paramStr(v: string | string[] | undefined): string {
  return Array.isArray(v) ? (v[0] || "") : (v || "");
}

export default function DonghuaDetailScreen() {
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const colors = useColors();
  const { width } = useWindowDimensions();
  const { tv: tvMode } = useTvMetrics();
  const cta = useMemo(() => getPrimaryCtaMetrics({ width, tvMode }), [width, tvMode]);
  const s = useMemo(() => createStyles(colors), [colors]);

  const params = useLocalSearchParams<{
    slug?: string;
    source?: string;
    url?: string;
    title?: string;
    poster?: string;
  }>();

  const slug = paramStr(params.slug);
  const source: DonghuaSourceId = paramStr(params.source) === "animekhor" ? "animekhor" : "animexin";
  const initialUrl = paramStr(params.url) || (
    source === "animekhor"
      ? `https://animekhor.org/anime/${slug}/`
      : `https://animexin.dev/${slug}/`
  );
  const initialTitle = paramStr(params.title) || slug.replace(/-/g, " ");
  const initialPoster = paramStr(params.poster);

  const [detail, setDetail] = useState<DonghuaDetail | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [epSearch, setEpSearch] = useState("");
  const [ascending, setAscending] = useState(false);
  const [expandedSynopsis, setExpandedSynopsis] = useState(false);

  const loadDetail = useCallback(async () => {
    setLoading(true);
    setError(null);
    try {
      const data = await fetchDonghuaDetail({ source, url: initialUrl });
      setDetail(data);
    } catch {
      setError("تعذّر تحميل تفاصيل العمل. تأكد من الاتصال بالإنترنت وأعد المحاولة.");
    } finally {
      setLoading(false);
    }
  }, [source, initialUrl]);

  useEffect(() => {
    void loadDetail();
  }, [loadDetail]);

  const episodes = useMemo(() => {
    const base = detail?.episodes || [];
    const filtered = epSearch.trim()
      ? base.filter((ep) =>
          ep.numberLabel.includes(epSearch.trim()) ||
          ep.title.toLowerCase().includes(epSearch.trim().toLowerCase()),
        )
      : base;
    return ascending ? [...filtered].reverse() : filtered;
  }, [detail?.episodes, epSearch, ascending]);

  const openEpisode = useCallback(
    (ep: DonghuaEpisodeItem) => {
      const allEps = detail?.episodes || [];
      const compactEps = allEps.slice(0, 260).map((e) => ({
        n: e.number,
        u: e.url,
        t: e.title,
      }));
      router.push({
        pathname: "/donghua/watch" as any,
        params: {
          source,
          slug,
          title: detail?.title || initialTitle,
          poster: detail?.poster || initialPoster,
          ep: String(ep.number),
          epUrl: ep.url,
          epTitle: ep.title,
          epsJson: JSON.stringify(compactEps),
        },
      });
    },
    [detail, initialPoster, initialTitle, router, slug, source],
  );

  const topPad = Platform.OS === "web" ? 12 : insets.top + 8;
  const displayTitle = detail?.title || initialTitle;
  const displayPoster = detail?.poster || initialPoster;
  const firstPlayEp = useMemo(() => {
    const list = detail?.episodes || [];
    return list.length > 0 ? list[list.length - 1] : null;
  }, [detail?.episodes]);

  return (
    <View style={[s.root, { backgroundColor: colors.bg }]}>
      {/* Top Bar */}
      <View style={[s.topBar, { paddingTop: topPad }]}>
        <Pressable
          onPress={() => router.back()}
          focusable={tvMode}
          style={({ focused }) => [s.iconBtn, tvMode && tvFocusStyle(focused)]}
          accessibilityLabel="رجوع"
        >
          <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
        </Pressable>
        <Text style={s.topTitle} numberOfLines={1}>
          {displayTitle}
        </Text>
        <View style={s.sourcePill}>
          <Text style={s.sourcePillText}>{source === "animekhor" ? "AnimeKhor" : "AnimeXin"}</Text>
        </View>
      </View>

      <ScrollView
        contentContainerStyle={[s.scroll, { paddingBottom: insets.bottom + 36 }]}
        showsVerticalScrollIndicator={false}
      >
        {/* Hero Info Card */}
        <View style={s.heroCard}>
          <View style={s.posterWrap}>
            {displayPoster ? (
              <SafePosterImage uri={displayPoster} style={s.poster} resizeMode="cover" />
            ) : (
              <View style={[s.poster, s.posterFallback]}>
                <Ionicons name="film-outline" size={28} color={colors.textMuted} />
              </View>
            )}
          </View>
          <View style={s.heroMeta}>
            <Text style={s.heroTitle} numberOfLines={3}>
              {displayTitle}
            </Text>
            <View style={s.badgeRow}>
              <View style={[s.badge, { backgroundColor: "rgba(245, 158, 11, 0.14)", borderColor: "rgba(245, 158, 11, 0.35)" }]}>
                <Text style={[s.badgeText, { color: "#f59e0b" }]}>دونغهوا</Text>
              </View>
              {detail?.status ? (
                <View style={s.badge}>
                  <Text style={s.badgeText}>{detail.status}</Text>
                </View>
              ) : null}
              {detail?.episodes?.length ? (
                <View style={s.badge}>
                  <Text style={s.badgeText}>{detail.episodes.length} حلقة</Text>
                </View>
              ) : null}
            </View>
            {detail?.genres && detail.genres.length > 0 ? (
              <View style={s.genreRow}>
                {detail.genres.slice(0, 5).map((g) => (
                  <View key={g} style={s.genreChip}>
                    <Text style={s.genreText}>{g}</Text>
                  </View>
                ))}
              </View>
            ) : null}
          </View>
        </View>

        {/* Primary Watch CTA (responsive phone/iPad/TV sizing) */}
        {firstPlayEp ? (
          <Pressable
            onPress={() => openEpisode(firstPlayEp)}
            focusable={tvMode}
            style={({ pressed, focused }) => [
              s.watchBtn,
              {
                minHeight: cta.minHeight,
                paddingHorizontal: cta.paddingHorizontal,
                paddingVertical: cta.paddingVertical,
                borderRadius: cta.borderRadius,
                maxWidth: cta.maxWidth,
                width: "100%",
                alignSelf: cta.maxWidth ? "center" : undefined,
                opacity: pressed ? 0.88 : 1,
              },
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <View style={s.watchBtnRight}>
              <View style={[s.watchBtnIcon, { width: cta.iconBoxSize, height: cta.iconBoxSize, borderRadius: cta.iconRadius }]}>
                <Ionicons name="play" size={cta.iconSize} color="#fff" />
              </View>
              <View style={s.watchBtnCopy}>
                <Text style={[s.watchBtnTitle, { fontSize: cta.titleSize, lineHeight: cta.titleLineHeight }]}>
                  مشاهدة الآن
                </Text>
                <Text style={[s.watchBtnSub, { fontSize: cta.subSize }]}>
                  تشغيل مباشر من الهاتف مع ترجمة عربية
                </Text>
              </View>
            </View>
            <View style={s.watchBtnPill}>
              <Text style={[s.watchBtnPillText, { fontSize: cta.pillFontSize }]}>
                الحلقة {firstPlayEp.numberLabel}
              </Text>
            </View>
          </Pressable>
        ) : null}

        {/* Synopsis */}
        {detail?.synopsis ? (
          <Pressable
            onPress={() => setExpandedSynopsis((v) => !v)}
            style={s.synopsisCard}
          >
            <Text style={s.sectionLabel}>القصة</Text>
            <Text style={s.synopsisText} numberOfLines={expandedSynopsis ? undefined : 4}>
              {detail.synopsis}
            </Text>
          </Pressable>
        ) : null}

        {/* Episodes Header & Search */}
        <View style={s.epHeader}>
          <View style={s.epHeaderRight}>
            <Text style={s.sectionLabel}>الحلقات ({detail?.episodes?.length || 0})</Text>
          </View>
          <Pressable
            onPress={() => setAscending((v) => !v)}
            focusable={tvMode}
            style={({ focused }) => [s.sortBtn, tvMode && tvFocusStyle(focused)]}
          >
            <Ionicons name="swap-vertical" size={14} color={colors.accent} />
            <Text style={s.sortBtnText}>{ascending ? "من الأقدم" : "من الأحدث"}</Text>
          </Pressable>
        </View>

        {(detail?.episodes?.length || 0) > 10 ? (
          <View style={s.searchBox}>
            <Ionicons name="search" size={16} color={colors.textMuted} />
            <TextInput
              value={epSearch}
              onChangeText={setEpSearch}
              placeholder="ابحث برقم الحلقة..."
              placeholderTextColor={colors.textMuted}
              style={s.searchInput}
              keyboardType="default"
            />
            {epSearch ? (
              <Pressable onPress={() => setEpSearch("")}>
                <Ionicons name="close-circle" size={17} color={colors.textMuted} />
              </Pressable>
            ) : null}
          </View>
        ) : null}

        {loading ? (
          <View style={s.centerBox}>
            <ActivityIndicator size="large" color={colors.accent} />
            <Text style={s.mutedText}>جاري تحميل الحلقات مباشرة...</Text>
          </View>
        ) : error ? (
          <View style={s.centerBox}>
            <Text style={s.errorText}>{error}</Text>
            <Pressable onPress={() => void loadDetail()} style={s.retryBtn}>
              <Text style={s.retryBtnText}>إعادة المحاولة</Text>
            </Pressable>
          </View>
        ) : episodes.length === 0 ? (
          <View style={s.centerBox}>
            <Text style={s.mutedText}>لا توجد حلقات مطابقة حالياً.</Text>
          </View>
        ) : (
          <View style={s.epList}>
            {episodes.map((ep) => (
              <Pressable
                key={ep.url}
                onPress={() => openEpisode(ep)}
                focusable={tvMode}
                style={({ pressed, focused }) => [
                  s.epRow,
                  { opacity: pressed ? 0.8 : 1 },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <View style={s.epPlayBadge}>
                  <Ionicons name="play" size={13} color="#fff" />
                </View>
                <View style={s.epInfo}>
                  <Text style={s.epTitle} numberOfLines={1}>
                    الحلقة {ep.numberLabel}
                  </Text>
                  {ep.date ? <Text style={s.epDate}>{ep.date}</Text> : null}
                </View>
                <View style={s.epNumBox}>
                  <Text style={s.epNumText}>{ep.numberLabel}</Text>
                </View>
              </Pressable>
            ))}
          </View>
        )}
      </ScrollView>
    </View>
  );
}

function createStyles(colors: ThemePalette) {
  return StyleSheet.create({
    root: { flex: 1 },
    topBar: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 10,
      paddingHorizontal: 14,
      paddingBottom: 10,
      borderBottomWidth: StyleSheet.hairlineWidth,
      borderBottomColor: colors.border,
      backgroundColor: colors.bg,
    },
    iconBtn: {
      width: 36,
      height: 36,
      borderRadius: 11,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
    },
    topTitle: {
      flex: 1,
      fontSize: 14.5,
      fontFamily: "Cairo_800ExtraBold",
      color: colors.textPrimary,
      textAlign: "right",
    },
    sourcePill: {
      paddingHorizontal: 9,
      paddingVertical: 4,
      borderRadius: 8,
      backgroundColor: colors.accentSurface,
      borderWidth: 1,
      borderColor: colors.accentBorder,
    },
    sourcePillText: { fontSize: 10.5, fontFamily: "Cairo_700Bold", color: colors.accent },
    scroll: { padding: 14, gap: 12 },
    heroCard: {
      flexDirection: ROW_RTL,
      gap: 12,
      backgroundColor: colors.card,
      borderRadius: 16,
      borderWidth: 1,
      borderColor: colors.border,
      padding: 12,
    },
    posterWrap: { width: 92, height: 132, borderRadius: 12, overflow: "hidden" },
    poster: { width: "100%", height: "100%" },
    posterFallback: { backgroundColor: colors.surface, alignItems: "center", justifyContent: "center" },
    heroMeta: { flex: 1, gap: 7, justifyContent: "center" },
    heroTitle: { fontSize: 15.5, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary, textAlign: "right", lineHeight: 22 },
    badgeRow: { flexDirection: ROW_RTL, flexWrap: "wrap", gap: 6 },
    badge: {
      paddingHorizontal: 8,
      paddingVertical: 2.5,
      borderRadius: 8,
      backgroundColor: colors.surface,
      borderWidth: 1,
      borderColor: colors.border,
    },
    badgeText: { fontSize: 10.5, fontFamily: "Cairo_700Bold", color: colors.textSecondary },
    genreRow: { flexDirection: ROW_RTL, flexWrap: "wrap", gap: 5 },
    genreChip: {
      paddingHorizontal: 7,
      paddingVertical: 2,
      borderRadius: 6,
      backgroundColor: colors.accentSurface,
    },
    genreText: { fontSize: 10, fontFamily: "Cairo_600SemiBold", color: colors.accent },
    watchBtn: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
      backgroundColor: "#0EA5E9",
      gap: 10,
    },
    watchBtnRight: { flexDirection: ROW_RTL, alignItems: "center", gap: 10, flex: 1 },
    watchBtnIcon: { backgroundColor: "rgba(0,0,0,0.22)", alignItems: "center", justifyContent: "center" },
    watchBtnCopy: { flex: 1, alignItems: "flex-end" },
    watchBtnTitle: { fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "right" },
    watchBtnSub: { fontFamily: "Cairo_600SemiBold", color: "rgba(255,255,255,0.86)", textAlign: "right" },
    watchBtnPill: {
      paddingHorizontal: 9,
      paddingVertical: 4,
      borderRadius: 9,
      backgroundColor: "rgba(0,0,0,0.22)",
    },
    watchBtnPillText: { fontFamily: "Cairo_700Bold", color: "#fff" },
    synopsisCard: {
      backgroundColor: colors.card,
      borderRadius: 14,
      borderWidth: 1,
      borderColor: colors.border,
      padding: 12,
      gap: 5,
    },
    sectionLabel: { fontSize: 13.5, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary, textAlign: "right" },
    synopsisText: { fontSize: 12, fontFamily: "Cairo_400Regular", color: colors.textSecondary, textAlign: "right", lineHeight: 20 },
    epHeader: { flexDirection: ROW_RTL, alignItems: "center", justifyContent: "space-between", marginTop: 2 },
    epHeaderRight: { flexDirection: ROW_RTL, alignItems: "center", gap: 6 },
    sortBtn: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 5,
      paddingHorizontal: 10,
      paddingVertical: 5,
      borderRadius: 10,
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
    },
    sortBtnText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: colors.accent },
    searchBox: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 8,
      backgroundColor: colors.card,
      borderRadius: 12,
      borderWidth: 1,
      borderColor: colors.border,
      paddingHorizontal: 12,
      height: 40,
    },
    searchInput: { flex: 1, fontSize: 12.5, fontFamily: "Cairo_600SemiBold", color: colors.textPrimary, textAlign: "right" },
    epList: { gap: 7 },
    epRow: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
      gap: 10,
      minHeight: 50,
      paddingHorizontal: 12,
      paddingVertical: 8,
      borderRadius: 12,
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
    },
    epNumBox: {
      minWidth: 36,
      height: 32,
      paddingHorizontal: 8,
      borderRadius: 9,
      backgroundColor: colors.accentSurface,
      borderWidth: 1,
      borderColor: colors.accentBorder,
      alignItems: "center",
      justifyContent: "center",
    },
    epNumText: { fontSize: 11.5, fontFamily: "Cairo_800ExtraBold", color: colors.accent },
    epInfo: { flex: 1, alignItems: "flex-end", gap: 1 },
    epTitle: { fontSize: 13, fontFamily: "Cairo_700Bold", color: colors.textPrimary, textAlign: "right" },
    epDate: { fontSize: 10, fontFamily: "Cairo_400Regular", color: colors.textMuted, textAlign: "right" },
    epPlayBadge: {
      width: 30,
      height: 30,
      borderRadius: 9,
      backgroundColor: "#10b981",
      alignItems: "center",
      justifyContent: "center",
    },
    centerBox: { alignItems: "center", justifyContent: "center", paddingVertical: 30, gap: 10 },
    mutedText: { fontSize: 12, fontFamily: "Cairo_600SemiBold", color: colors.textMuted, textAlign: "center" },
    errorText: { fontSize: 12.5, fontFamily: "Cairo_700Bold", color: "#ef4444", textAlign: "center" },
    retryBtn: { paddingHorizontal: 16, paddingVertical: 8, borderRadius: 10, backgroundColor: colors.accent },
    retryBtnText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: colors.buttonText },
  });
}
