import { useQuery } from "@tanstack/react-query";
import { Ionicons } from "@expo/vector-icons";
import { Image } from "react-native";
import { useRouter } from "expo-router";
import React, { useState } from "react";
import {
  ActivityIndicator, Platform,
  ScrollView, StyleSheet, Text, View, I18nManager,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { anilistQuery, SCHEDULE_QUERY } from "@/utils/anilist";
import { getKnownArabicAnimeTitle } from "@/utils/arabicAnimeTitles";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";

const DAYS_AR = ["الأحد", "الإثنين", "الثلاثاء", "الأربعاء", "الخميس", "الجمعة", "السبت"];

type AiringSchedule = {
  id: number;
  airingAt: number;
  episode: number;
  media: {
    id: number;
    title: { romaji: string; english: string | null };
    title_ar?: string | null;
    coverImage: { large: string };
    averageScore: number | null;
  };
};

function formatAiringTime12h(airingAt: number): string {
  const date = new Date(airingAt * 1000);
  let hours = date.getHours();
  const minutes = date.getMinutes().toString().padStart(2, "0");
  const period = hours >= 12 ? "مساءً" : "صباحاً";
  hours = hours % 12 || 12;
  return `يُعرض الساعة ${hours}:${minutes} ${period}`;
}

function formatCountdown(airingAt: number): string {
  const diffSec = airingAt - Math.floor(Date.now() / 1000);
  if (diffSec <= 0) return "عُرضت";
  const hours = Math.floor(diffSec / 3600);
  if (hours > 24) {
    const days = Math.floor(hours / 24);
    return `بعد ${days}ي`;
  }
  if (hours > 0) return `بعد ${hours}س`;
  const minutes = Math.floor(diffSec / 60);
  return `بعد ${minutes}د`;
}

export default function ScheduleScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const tvMode = isTvDevice();
  const topPad = Platform.OS === "web" ? 0 : Math.max(insets.top, Platform.OS === "android" ? 28 : 44);

  const now = new Date();
  const todayDay = now.getDay();
  const [selectedDay, setSelectedDay] = useState(todayDay);
  const [activeTab, setActiveTab] = useState<"schedule" | "latest">("schedule");

  const weekStart = new Date(now);
  weekStart.setDate(now.getDate() - now.getDay());
  weekStart.setHours(0, 0, 0, 0);

  const dayStart = new Date(weekStart);
  dayStart.setDate(weekStart.getDate() + selectedDay);
  const dayEnd = new Date(dayStart);
  dayEnd.setHours(23, 59, 59, 999);

  const { data, isLoading } = useQuery({
    queryKey: ["schedule", selectedDay],
    queryFn: () =>
      anilistQuery<{ Page: { airingSchedules: AiringSchedule[] } }>(SCHEDULE_QUERY, {
        airingAt_greater: Math.floor(dayStart.getTime() / 1000) - 1,
        airingAt_lesser: Math.floor(dayEnd.getTime() / 1000),
      }),
  });

  const schedules = data?.Page?.airingSchedules || [];

  return (
    <View style={[styles.container, { backgroundColor: colors.background }]}>
      {/* ── Top Bar Header (Matches Screenshot_20261102-131224) ── */}
      <View style={[styles.header, { paddingTop: topPad + 12 }]}>
        <View style={styles.headerRight}>
          <Pressable
            onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)" as any)}
            focusable={tvMode}
            style={({ focused }) => [styles.backBtn, tvMode && tvFocusStyle(focused)]}
          >
            <Ionicons name="chevron-forward" size={20} color={colors.text} />
          </Pressable>
          <View style={styles.calendarIconBox}>
            <Ionicons name="calendar" size={18} color="#c084fc" />
          </View>
          <View style={styles.headerTitleWrap}>
            <Text style={[styles.title, { color: colors.text }]}>جدول البث الأسبوعي</Text>
            <Text style={styles.subtitle}>مواعيد عرض الحلقات بتوقيتك المحلي</Text>
          </View>
        </View>
      </View>

      {/* ── Top Toggle Tabs: [جدول الأسبوع] | [آخر الحلقات المضافة] ── */}
      <View style={styles.tabContainer}>
        <Pressable
          onPress={() => setActiveTab("schedule")}
          focusable={tvMode}
          style={({ focused }) => [
            styles.tabButton,
            activeTab === "schedule" ? styles.tabActive : styles.tabInactive,
            tvMode && tvFocusStyle(focused),
          ]}
        >
          <Ionicons name="calendar" size={14} color={activeTab === "schedule" ? "#fff" : colors.mutedForeground} />
          <Text style={activeTab === "schedule" ? styles.tabActiveText : styles.tabInactiveText}>جدول الأسبوع</Text>
        </Pressable>
        <Pressable
          onPress={() => router.push("/latest" as any)}
          focusable={tvMode}
          style={({ focused }) => [styles.tabButton, styles.tabInactive, tvMode && tvFocusStyle(focused)]}
        >
          <Ionicons name="flash" size={14} color="#eab308" />
          <Text style={styles.tabInactiveText}>آخر الحلقات المضافة</Text>
        </Pressable>
      </View>

      {/* ── Horizontal Days Selector ── */}
      <View style={styles.daysWrapper}>
        <ScrollView
          horizontal
          showsHorizontalScrollIndicator={false}
          style={styles.daysScroll}
          contentContainerStyle={styles.daysRow}
        >
          {DAYS_AR.map((day, i) => {
            const isSelected = i === selectedDay;
            return (
              <Pressable
                key={day}
                onPress={() => setSelectedDay(i)}
                focusable={tvMode}
                hasTVPreferredFocus={tvMode && isSelected}
                testID={tvMode && isSelected ? "nova-tv-preferred-focus" : undefined}
                style={({ focused }) => [
                  styles.dayBtn,
                  {
                    backgroundColor: isSelected ? "#06b6d4" : "rgba(39, 39, 42, 0.85)",
                    borderColor: isSelected ? "#06b6d4" : "rgba(255, 255, 255, 0.12)",
                  },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Text
                  numberOfLines={1}
                  style={[
                    styles.dayText,
                    {
                      color: isSelected ? "#ffffff" : "#f4f4f5",
                      fontWeight: isSelected ? "700" : "600",
                    },
                  ]}
                >
                  {day}
                </Text>
              </Pressable>
            );
          })}
        </ScrollView>
      </View>

      {/* ── Content Area ── */}
      {isLoading ? (
        <View style={styles.center}>
          <ActivityIndicator color="#06b6d4" size="large" />
        </View>
      ) : schedules.length === 0 ? (
        <View style={styles.center}>
          <Ionicons name="calendar-outline" size={54} color={colors.mutedForeground} />
          <Text style={[styles.emptyText, { color: colors.mutedForeground }]}>لا يوجد بث مجدول لهذا اليوم</Text>
        </View>
      ) : (
        <ScrollView
          showsVerticalScrollIndicator={false}
          contentContainerStyle={styles.scheduleList}
        >
          {schedules.map((item) => {
            const enTitle = item.media.title.english || item.media.title.romaji;
            const arTitle = item.media.title_ar || getKnownArabicAnimeTitle(item.media.id, item.media.title.english, item.media.title.romaji);
            const animeTitle = arTitle || enTitle;
            return (
              <Pressable
                key={item.id}
                onPress={() =>
                  router.push(
                    `/anime/${item.media.id}?title=${encodeURIComponent(
                      item.media.title.romaji
                    )}&english=${encodeURIComponent(item.media.title.english || "")}`
                  )
                }
                focusable={tvMode}
                style={({ focused, pressed }) => [
                  styles.scheduleItem,
                  { backgroundColor: "rgba(24, 24, 27, 0.8)", borderColor: "rgba(255, 255, 255, 0.08)" },
                  pressed && { opacity: 0.85 },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                {/* Left Countdown Badge Pill */}
                <View style={styles.countdownBadge}>
                  <Text style={styles.countdownText}>{formatCountdown(item.airingAt)}</Text>
                </View>

                {/* Middle Text Info */}
                <View style={styles.scheduleInfo}>
                  <Text style={styles.scheduleTitle} numberOfLines={2}>
                    {animeTitle}
                  </Text>
                  {arTitle && enTitle && arTitle.trim() !== enTitle.trim() ? (
                    <Text
                      style={{ fontSize: 10.5, fontFamily: "Cairo_600SemiBold", color: "#a1a1aa", textAlign: "right", writingDirection: "ltr" }}
                      numberOfLines={1}
                    >
                      {enTitle}
                    </Text>
                  ) : null}
                  <Text style={styles.scheduleEp}>الحلقة {item.episode}</Text>
                  <Text style={styles.scheduleTime}>
                    {formatAiringTime12h(item.airingAt)}
                  </Text>
                </View>

                {/* Right Cover Image */}
                <Image
                  source={{ uri: item.media.coverImage.large }}
                  style={styles.scheduleImg}
                  resizeMode="cover"
                />
              </Pressable>
            );
          })}
        </ScrollView>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1 },
  header: {
    paddingHorizontal: 16,
    paddingBottom: 14,
    flexDirection: I18nManager.isRTL ? "row" : "row-reverse",
    alignItems: "center",
    justifyContent: "space-between",
  },
  headerRight: {
    flexDirection: I18nManager.isRTL ? "row" : "row-reverse",
    alignItems: "center",
    gap: 10,
    flex: 1,
  },
  backBtn: {
    width: 38,
    height: 38,
    borderRadius: 12,
    backgroundColor: "rgba(39, 39, 42, 0.8)",
    borderWidth: 1,
    borderColor: "rgba(255, 255, 255, 0.12)",
    alignItems: "center",
    justifyContent: "center",
  },
  calendarIconBox: {
    width: 38,
    height: 38,
    borderRadius: 12,
    backgroundColor: "rgba(88, 28, 135, 0.35)",
    borderWidth: 1,
    borderColor: "rgba(168, 85, 247, 0.45)",
    alignItems: "center",
    justifyContent: "center",
  },
  headerTitleWrap: {
    alignItems: "flex-end",
    gap: 2,
    flex: 1,
  },
  title: {
    fontSize: 17,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
  },
  subtitle: {
    fontSize: 11,
    fontFamily: "Cairo_400Regular",
    color: "#a1a1aa",
    textAlign: "right",
  },

  /* Tabs container */
  tabContainer: {
    flexDirection: "row-reverse",
    gap: 8,
    paddingHorizontal: 16,
    marginBottom: 12,
  },
  tabButton: {
    flex: 1,
    flexDirection: "row-reverse",
    alignItems: "center",
    justifyContent: "center",
    gap: 6,
    paddingVertical: 10,
    borderRadius: 14,
  },
  tabActive: {
    backgroundColor: "#7c3aed",
  },
  tabInactive: {
    backgroundColor: "rgba(24, 24, 27, 0.85)",
    borderWidth: 1,
    borderColor: "rgba(255, 255, 255, 0.08)",
  },
  tabActiveText: {
    color: "#ffffff",
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
  },
  tabInactiveText: {
    color: "#a1a1aa",
    fontSize: 12,
    fontFamily: "Cairo_600SemiBold",
  },

  /* Days Strip */
  daysWrapper: {
    height: 52,
    flexShrink: 0,
    marginBottom: 10,
  },
  daysScroll: {
    flexGrow: 0,
    flexShrink: 0,
  },
  daysRow: {
    paddingHorizontal: 16,
    paddingVertical: 4,
    alignItems: "center",
    flexDirection: I18nManager.isRTL ? "row" : "row-reverse",
    gap: 8,
  },
  dayBtn: {
    minHeight: 40,
    minWidth: 74,
    paddingHorizontal: 16,
    paddingVertical: 8,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  dayText: {
    fontSize: 13,
    lineHeight: 20,
    fontFamily: "Cairo_700Bold",
    textAlign: "center",
    includeFontPadding: false,
  },

  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
  emptyText: { fontSize: 14, fontFamily: "Cairo_600SemiBold" },

  /* Schedule Cards matching Screenshot_20261102-131224 */
  scheduleList: {
    paddingHorizontal: 16,
    gap: 10,
    paddingBottom: 32,
  },
  scheduleItem: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    borderRadius: 16,
    padding: 10,
    borderWidth: 1,
  },
  scheduleImg: {
    width: 62,
    height: 80,
    borderRadius: 10,
  },
  scheduleInfo: {
    flex: 1,
    paddingHorizontal: 12,
    alignItems: "flex-end",
    gap: 3,
  },
  scheduleTitle: {
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
    color: "#ffffff",
    textAlign: "right",
  },
  scheduleEp: {
    fontSize: 11,
    fontFamily: "Cairo_600SemiBold",
    color: "#c084fc",
    textAlign: "right",
  },
  scheduleTime: {
    fontSize: 10,
    fontFamily: "Cairo_400Regular",
    color: "#a1a1aa",
    textAlign: "right",
  },
  countdownBadge: {
    paddingHorizontal: 10,
    paddingVertical: 6,
    borderRadius: 10,
    backgroundColor: "rgba(39, 39, 42, 0.75)",
    borderWidth: 1,
    borderColor: "rgba(255, 255, 255, 0.12)",
    alignItems: "center",
    justifyContent: "center",
  },
  countdownText: {
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
    color: "#e4e4e7",
  },
});
