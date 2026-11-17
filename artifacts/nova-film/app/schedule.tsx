import { Ionicons } from "@expo/vector-icons";
import { useRouter } from "expo-router";
import React, { useMemo, useState } from "react";
import {
  I18nManager,
  Image,
  Platform,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { NOVA_FILM_CATALOG, type FilmTitle } from "@/utils/filmCatalog";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
const DAYS_AR = ["الأحد", "الإثنين", "الثلاثاء", "الأربعاء", "الخميس", "الجمعة", "السبت"];

export default function NovaFilmScheduleScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const now = new Date();
  const [selectedDay, setSelectedDay] = useState<number | "all">("all");

  const items = useMemo(() => {
    if (selectedDay === "all") return NOVA_FILM_CATALOG;
    return NOVA_FILM_CATALOG.filter((item) => item.releaseDayIndex === selectedDay);
  }, [selectedDay]);

  const topPad = Platform.OS === "web" ? 12 : Math.max(insets.top, Platform.OS === "android" ? 24 : 44);

  const openFilm = (item: FilmTitle) => {
    router.push({ pathname: "/film/[id]" as any, params: { id: String(item.id) } });
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
          style={[s.backBtn, { backgroundColor: colors.surfaceElevated, borderColor: colors.border }]}
        >
          <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
        </Pressable>
        <View style={{ flex: 1, alignItems: "flex-end" }}>
          <Text style={[s.headerTitle, { color: colors.textPrimary }]}>جدول البث والإصدارات</Text>
          <Text style={[s.headerSub, { color: colors.textMuted }]}>
            مواعيد الأفلام والمسلسلات والأنميشن في NOVA FILM
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

      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={s.list}>
        {items.length === 0 ? (
          <View style={s.emptyBox}>
            <Ionicons name="calendar-outline" size={38} color={colors.textMuted} />
            <Text style={[s.emptyText, { color: colors.textSecondary }]}>
              لا توجد إصدارات مجدولة لهذا اليوم
            </Text>
          </View>
        ) : (
          items.map((item) => (
            <Pressable
              key={item.id}
              onPress={() => openFilm(item)}
              style={[s.card, { backgroundColor: colors.card, borderColor: colors.border }]}
            >
              <Image source={item.posterSource} style={s.poster} resizeMode="cover" />
              <View style={s.infoCol}>
                <Text style={[s.title, { color: colors.textPrimary }]} numberOfLines={1}>
                  {item.titleAr}
                </Text>
                <Text style={[s.cat, { color: "#0EA5E9" }]}>
                  {item.categoryLabel} · {item.qualityBadge}
                </Text>
                <Text style={[s.time, { color: colors.textMuted }]}>
                  {DAYS_AR[item.releaseDayIndex ?? 0]} · {item.releaseTimeLabel || "9:00 مساءً"}
                </Text>
              </View>
              <View style={[s.dayBadge, { backgroundColor: colors.surfaceElevated, borderColor: colors.border }]}>
                <Text style={[s.dayBadgeText, { color: colors.textPrimary }]}>
                  ★ {item.imdbRating.toFixed(1)}
                </Text>
              </View>
            </Pressable>
          ))
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
  headerTitle: { fontSize: 16, lineHeight: 24, fontFamily: "Cairo_800ExtraBold", includeFontPadding: true },
  headerSub: { fontSize: 11, fontFamily: "Cairo_400Regular" },
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
  infoCol: { flex: 1, alignItems: "flex-end", gap: 4 },
  title: { fontSize: 14, lineHeight: 21, fontFamily: "Cairo_800ExtraBold", includeFontPadding: true },
  cat: { fontSize: 11.5, fontFamily: "Cairo_700Bold" },
  time: { fontSize: 11, fontFamily: "Cairo_400Regular" },
  dayBadge: {
    paddingHorizontal: 10,
    paddingVertical: 6,
    borderRadius: 10,
    borderWidth: 1,
  },
  dayBadgeText: { fontSize: 11.5, fontFamily: "Cairo_800ExtraBold" },
  emptyBox: { alignItems: "center", paddingVertical: 64, gap: 10 },
  emptyText: { fontSize: 13.5, fontFamily: "Cairo_600SemiBold" },
});
