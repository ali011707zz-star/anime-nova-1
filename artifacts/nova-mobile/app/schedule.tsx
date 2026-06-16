import { useQuery } from "@tanstack/react-query";
import { Ionicons } from "@expo/vector-icons";
import { Image } from "expo-image";
import { useRouter } from "expo-router";
import React, { useState } from "react";
import {
  ActivityIndicator, Platform, Pressable,
  ScrollView, StyleSheet, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { anilistQuery, SCHEDULE_QUERY, formatAiringTime } from "@/utils/anilist";

const DAYS_AR = ["الأحد", "الإثنين", "الثلاثاء", "الأربعاء", "الخميس", "الجمعة", "السبت"];

type AiringSchedule = {
  id: number;
  airingAt: number;
  episode: number;
  media: {
    id: number;
    title: { romaji: string; english: string | null };
    coverImage: { large: string };
    averageScore: number | null;
  };
};

export default function ScheduleScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const topPad = Platform.OS === "web" ? 67 : Math.max(insets.top, Platform.OS === "android" ? 28 : 44);

  const now = new Date();
  const todayDay = now.getDay();
  const [selectedDay, setSelectedDay] = useState(todayDay);

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
      {/* Header */}
      <View style={[styles.header, { paddingTop: topPad + 16 }]}>
        <Pressable onPress={() => router.back()} style={styles.backBtn}>
          <Ionicons name="arrow-back" size={22} color={colors.text} />
        </Pressable>
        <Text style={[styles.title, { color: colors.text }]}>جدول البث</Text>
        <View style={{ width: 30 }} />
      </View>

      {/* Day Selector */}
      <ScrollView
        horizontal
        showsHorizontalScrollIndicator={false}
        contentContainerStyle={styles.daysRow}
      >
        {DAYS_AR.map((day, i) => {
          const isToday = i === todayDay;
          const isSelected = i === selectedDay;
          return (
            <Pressable
              key={day}
              onPress={() => setSelectedDay(i)}
              style={[
                styles.dayBtn,
                {
                  backgroundColor: isSelected ? colors.primary : colors.card,
                  borderColor: isSelected ? colors.primary : isToday ? colors.primary + "50" : colors.border,
                },
              ]}
            >
              <Text style={[styles.dayText, { color: isSelected ? "#fff" : isToday ? colors.primary : colors.mutedForeground }]}>
                {day}
              </Text>
              {isToday && !isSelected && <View style={[styles.todayDot, { backgroundColor: colors.primary }]} />}
            </Pressable>
          );
        })}
      </ScrollView>

      {isLoading ? (
        <View style={styles.center}>
          <ActivityIndicator color={colors.primary} size="large" />
        </View>
      ) : schedules.length === 0 ? (
        <View style={styles.center}>
          <Ionicons name="calendar" size={64} color={colors.mutedForeground} />
          <Text style={[styles.emptyText, { color: colors.mutedForeground }]}>لا يوجد بث هذا اليوم</Text>
        </View>
      ) : (
        <ScrollView
          showsVerticalScrollIndicator={false}
          contentContainerStyle={styles.scheduleList}
        >
          {schedules.map((item) => (
            <Pressable
              key={item.id}
              onPress={() => router.push(`/anime/${item.media.id}?title=${encodeURIComponent(item.media.title.romaji)}&english=${encodeURIComponent(item.media.title.english || "")}`)}
              style={[styles.scheduleItem, { backgroundColor: colors.card, borderColor: colors.border }]}
            >
              <Image
                source={{ uri: item.media.coverImage.large }}
                style={styles.scheduleImg}
                contentFit="cover"
              />
              <View style={styles.scheduleInfo}>
                <Text style={[styles.scheduleTitle, { color: colors.text }]} numberOfLines={2}>
                  {item.media.title.english || item.media.title.romaji}
                </Text>
                <View style={styles.scheduleRow}>
                  <View style={[styles.epBadge, { backgroundColor: colors.primary + "20" }]}>
                    <Text style={[styles.epBadgeText, { color: colors.primary }]}>حلقة {item.episode}</Text>
                  </View>
                  {item.media.averageScore && (
                    <View style={styles.scoreRow}>
                      <Ionicons name="star" size={11} color="#FFD700" />
                      <Text style={[styles.scoreText, { color: colors.mutedForeground }]}>
                        {(item.media.averageScore / 10).toFixed(1)}
                      </Text>
                    </View>
                  )}
                </View>
              </View>
              <View style={styles.timeWrap}>
                <Text style={[styles.timeText, { color: colors.primary }]}>
                  {formatAiringTime(item.airingAt)}
                </Text>
                <Ionicons name="chevron-back" size={14} color={colors.mutedForeground} />
              </View>
            </Pressable>
          ))}
        </ScrollView>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1 },
  header: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingHorizontal: 16, paddingBottom: 12 },
  backBtn: { padding: 4 },
  title: { fontSize: 20, fontFamily: "Cairo_800ExtraBold" },
  daysRow: { paddingHorizontal: 16, gap: 8, marginBottom: 16, alignItems: "center" },
  dayBtn: { paddingHorizontal: 14, paddingVertical: 8, borderRadius: 20, borderWidth: 1, alignItems: "center" },
  dayText: { fontSize: 12, fontFamily: "Cairo_600SemiBold" },
  todayDot: { width: 4, height: 4, borderRadius: 2, marginTop: 2 },
  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
  emptyText: { fontSize: 16, fontFamily: "Cairo_600SemiBold" },
  scheduleList: { paddingHorizontal: 16, gap: 10, paddingBottom: 30 },
  scheduleItem: { flexDirection: "row", alignItems: "center", borderRadius: 12, overflow: "hidden", borderWidth: 1 },
  scheduleImg: { width: 70, height: 90 },
  scheduleInfo: { flex: 1, padding: 12, gap: 6 },
  scheduleTitle: { fontSize: 13, fontFamily: "Cairo_600SemiBold", lineHeight: 18 },
  scheduleRow: { flexDirection: "row", alignItems: "center", gap: 10 },
  epBadge: { paddingHorizontal: 8, paddingVertical: 3, borderRadius: 6 },
  epBadgeText: { fontSize: 11, fontFamily: "Cairo_700Bold" },
  scoreRow: { flexDirection: "row", alignItems: "center", gap: 3 },
  scoreText: { fontSize: 11, fontFamily: "Cairo_400Regular" },
  timeWrap: { flexDirection: "row", alignItems: "center", gap: 4, paddingRight: 12 },
  timeText: { fontSize: 12, fontFamily: "Cairo_700Bold" },
});
