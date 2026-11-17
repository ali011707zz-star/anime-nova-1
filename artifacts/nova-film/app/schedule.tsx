import { Ionicons } from "@expo/vector-icons";
import { useQuery } from "@tanstack/react-query";
import { useRouter } from "expo-router";
import React, { useMemo, useState } from "react";
import {
  ActivityIndicator,
  I18nManager,
  Image,
  Platform,
  Pressable,
  RefreshControl,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { fetchFilmSchedule } from "@/utils/filmApi";
import { getImageSource, type FilmSummary } from "@/utils/filmCatalog";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
const ALIGN_RIGHT = I18nManager.isRTL ? "flex-start" : "flex-end";
const DAYS_AR = ["الأحد", "الإثنين", "الثلاثاء", "الأربعاء", "الخميس", "الجمعة", "السبت"];

export default function NovaFilmScheduleScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const now = new Date();
  const [selectedDay, setSelectedDay] = useState<number | "all">("all");

  const { data: schedule = [], isLoading, isError, refetch, isRefetching } = useQuery({
    queryKey: ["nova-film-schedule"],
    queryFn: fetchFilmSchedule,
    staleTime: 5 * 60_000,
  });

  const items = useMemo(() => {
    if (selectedDay === "all") return schedule;
    return schedule.filter((item) => item.releaseDayIndex === selectedDay);
  }, [schedule, selectedDay]);

  const topPad = Platform.OS === "web" ? 12 : Math.max(insets.top, Platform.OS === "android" ? 24 : 44);

  const openFilm = (item: FilmSummary) => {
    router.push({
      pathname: "/film/[id]" as any,
      params: { id: String(item.id), type: item.tmdbType, title: item.titleAr },
    });
  };

  return (
    <View style={[s.container, { backgroundColor: colors.background }]}>
      <View
        style={[
          s.header,
          {
            paddingTop: topPad + 6,
            borderBottomColor: colors.border,
            backgroundColor: colors.surface,
          },
        ]}
      >
        <Pressable
          onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)" as any))}
          accessibilityLabel="رجوع"
          style={[s.backBtn, { backgroundColor: colors.surfaceElevated, borderColor: colors.border }]}
        >
          <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
        </Pressable>
        <View style={{ flex: 1, alignItems: ALIGN_RIGHT }}>
          <Text style={[s.headerTitle, { color: colors.textPrimary }]}>جدول البث والإصدارات</Text>
          <Text style={[s.headerSub, { color: colors.textMuted }]}>
            مواعيد الأفلام والمسلسلات والأنميشن المحدّثة من الخادم
          </Text>
        </View>
      </View>

      <ScrollView
        horizontal
        showsHorizontalScrollIndicator={false}
        style={{ maxHeight: 58 }}
        contentContainerStyle={s.daysRow}
      >
        <Pressable
          onPress={() => setSelectedDay("all")}
          style={[
            s.dayPill,
            {
              backgroundColor: selectedDay === "all" ? "#0EA5E9" : colors.card,
              borderColor: selectedDay === "all" ? "#0EA5E9" : colors.border,
            },
          ]}
        >
          <Text style={[s.dayText, { color: selectedDay === "all" ? "#FFFFFF" : colors.textPrimary }]}>
            كل الأسبوع
          </Text>
        </Pressable>
        {DAYS_AR.map((label, idx) => {
          const active = selectedDay === idx;
          const isToday = now.getDay() === idx;
          return (
            <Pressable
              key={label}
              onPress={() => setSelectedDay(idx)}
              style={[
                s.dayPill,
                {
                  backgroundColor: active ? "#0EA5E9" : colors.card,
                  borderColor: active ? "#0EA5E9" : isToday ? "#38BDF8" : colors.border,
                },
              ]}
            >
              <Text style={[s.dayText, { color: active ? "#FFFFFF" : colors.textPrimary }]}>
                {label}
                {isToday ? " · اليوم" : ""}
              </Text>
            </Pressable>
          );
        })}
      </ScrollView>

      <ScrollView
        showsVerticalScrollIndicator={false}
        contentContainerStyle={s.list}
        refreshControl={
          <RefreshControl
            refreshing={isRefetching}
            onRefresh={() => {
              void refetch();
            }}
            tintColor="#0EA5E9"
          />
        }
      >
        {isLoading ? (
          <View style={s.emptyBox}>
            <ActivityIndicator size="large" color="#0EA5E9" />
            <Text style={[s.emptyText, { color: colors.textSecondary }]}>
              جاري جلب جدول العروض الأسبوعي...
            </Text>
          </View>
        ) : isError ? (
          <View style={s.emptyBox}>
            <Ionicons name="cloud-offline-outline" size={38} color={colors.textMuted} />
            <Text style={[s.emptyText, { color: colors.textSecondary }]}>
              تعذّر تحميل الجدول من الخادم
            </Text>
            <Pressable onPress={() => void refetch()} style={s.retryBtn}>
              <Text style={s.retryText}>إعادة المحاولة</Text>
            </Pressable>
          </View>
        ) : items.length === 0 ? (
          <View style={s.emptyBox}>
            <Ionicons name="calendar-outline" size={38} color={colors.textMuted} />
            <Text style={[s.emptyText, { color: colors.textSecondary }]}>
              لا توجد إصدارات مجدولة لهذا اليوم
            </Text>
          </View>
        ) : (
          items.map((item) => {
            const imgSrc = getImageSource(item.posterUrl || item.backdropUrl);
            return (
              <Pressable
                key={`${item.tmdbType}-${item.id}`}
                onPress={() => openFilm(item)}
                style={[s.card, { backgroundColor: colors.card, borderColor: colors.border }]}
              >
                {imgSrc ? (
                  <Image source={imgSrc} style={s.poster} resizeMode="cover" />
                ) : (
                  <View style={[s.poster, { alignItems: "center", justifyContent: "center" }]}>
                    <Ionicons name="film-outline" size={24} color={colors.textMuted} />
                  </View>
                )}
                <View style={s.infoCol}>
                  <Text style={[s.title, { color: colors.textPrimary }]} numberOfLines={1}>
                    {item.titleAr}
                  </Text>
                  <Text style={[s.cat, { color: "#0EA5E9" }]} numberOfLines={1}>
                    {item.categoryLabel} · {item.qualityBadge}
                  </Text>
                  <Text style={[s.time, { color: colors.textMuted }]} numberOfLines={1}>
                    {DAYS_AR[item.releaseDayIndex ?? 0]} · {item.scheduleNote || "بث مباشر"}
                  </Text>
                </View>
                <View
                  style={[
                    s.dayBadge,
                    { backgroundColor: colors.surfaceElevated, borderColor: colors.border },
                  ]}
                >
                  <Text style={[s.dayBadgeText, { color: colors.textPrimary }]}>
                    ★ {item.imdbRating.toFixed(1)}
                  </Text>
                </View>
              </Pressable>
            );
          })
        )}
      </ScrollView>
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  header: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 12,
    paddingHorizontal: 14,
    paddingBottom: 12,
    borderBottomWidth: 1,
  },
  backBtn: {
    width: 39,
    height: 39,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  headerTitle: {
    fontSize: 16,
    lineHeight: 24,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
    includeFontPadding: true,
  },
  headerSub: { fontSize: 11, fontFamily: "Cairo_400Regular", textAlign: "right" },
  daysRow: { paddingHorizontal: 14, paddingVertical: 10, gap: 8, alignItems: "center" },
  dayPill: {
    borderWidth: 1,
    borderRadius: 12,
    paddingHorizontal: 14,
    paddingVertical: 7,
  },
  dayText: { fontSize: 12, fontFamily: "Cairo_700Bold", includeFontPadding: true },
  list: { paddingHorizontal: 14, paddingTop: 6, paddingBottom: 40, gap: 10 },
  card: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    borderRadius: 16,
    borderWidth: 1,
    padding: 10,
    gap: 12,
  },
  poster: { width: 64, height: 92, borderRadius: 11, backgroundColor: "#14171C" },
  infoCol: { flex: 1, alignItems: ALIGN_RIGHT, gap: 4 },
  title: {
    fontSize: 14,
    lineHeight: 21,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
    includeFontPadding: true,
  },
  cat: { fontSize: 11.5, fontFamily: "Cairo_700Bold", textAlign: "right" },
  time: { fontSize: 11, fontFamily: "Cairo_400Regular", textAlign: "right" },
  dayBadge: {
    paddingHorizontal: 10,
    paddingVertical: 6,
    borderRadius: 10,
    borderWidth: 1,
  },
  dayBadgeText: { fontSize: 11.5, fontFamily: "Cairo_800ExtraBold" },
  emptyBox: { alignItems: "center", paddingVertical: 64, gap: 10 },
  emptyText: { fontSize: 13.5, fontFamily: "Cairo_600SemiBold", textAlign: "center" },
  retryBtn: {
    marginTop: 4,
    backgroundColor: "#0EA5E9",
    paddingHorizontal: 18,
    paddingVertical: 9,
    borderRadius: 12,
  },
  retryText: { color: "#FFFFFF", fontSize: 12, fontFamily: "Cairo_800ExtraBold" },
});
