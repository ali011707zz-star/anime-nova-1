import { Ionicons } from "@expo/vector-icons";
import { useRouter } from "expo-router";
import React from "react";
import {
  Platform, Pressable, ScrollView,
  StyleSheet, Switch, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { useApp } from "@/context/AppContext";

type Theme = "dark" | "amoled" | "violet" | "blue" | "pink";

const THEMES: { label: string; value: Theme; color: string; bg: string }[] = [
  { label: "داكن", value: "dark", color: "#6B7280", bg: "#111116" },
  { label: "AMOLED", value: "amoled", color: "#1a1a2e", bg: "#09090B" },
  { label: "بنفسجي", value: "violet", color: "#8B5CF6", bg: "#0D0B14" },
  { label: "أزرق", value: "blue", color: "#3B82F6", bg: "#0A0F1E" },
  { label: "وردي", value: "pink", color: "#EC4899", bg: "#150B11" },
];

function SettingRow({ icon, title, subtitle, children }: {
  icon: keyof typeof Ionicons.glyphMap;
  title: string;
  subtitle?: string;
  children?: React.ReactNode;
}) {
  const colors = useColors();
  return (
    <View style={[styles.row, { borderBottomColor: colors.border }]}>
      <View style={[styles.iconWrap, { backgroundColor: colors.card }]}>
        <Ionicons name={icon} size={18} color={colors.primary} />
      </View>
      <View style={styles.rowText}>
        <Text style={[styles.rowTitle, { color: colors.text }]}>{title}</Text>
        {subtitle && <Text style={[styles.rowSubtitle, { color: colors.mutedForeground }]}>{subtitle}</Text>}
      </View>
      {children}
    </View>
  );
}

export default function SettingsScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { theme, setTheme, remoteConfig, refreshConfig, watchHistory, favorites } = useApp();
  const topPad = Platform.OS === "web" ? 67 : insets.top;

  return (
    <View style={[styles.container, { backgroundColor: colors.background }]}>
      {/* Header */}
      <View style={[styles.header, { paddingTop: topPad + 8 }]}>
        <Pressable onPress={() => router.back()} style={styles.backBtn}>
          <Ionicons name="arrow-back" size={22} color={colors.text} />
        </Pressable>
        <Text style={[styles.title, { color: colors.text }]}>الإعدادات</Text>
        <View style={{ width: 30 }} />
      </View>

      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={{ paddingBottom: 60 }}>
        {/* Theme Section */}
        <View style={styles.section}>
          <Text style={[styles.sectionTitle, { color: colors.mutedForeground }]}>المظهر</Text>
          <View style={[styles.card, { backgroundColor: colors.card, borderColor: colors.border }]}>
            <View style={styles.themesRow}>
              {THEMES.map((t) => (
                <Pressable
                  key={t.value}
                  onPress={() => setTheme(t.value)}
                  style={styles.themeItem}
                >
                  <View style={[
                    styles.themeCircle,
                    { backgroundColor: t.bg, borderColor: theme === t.value ? t.color : colors.border },
                  ]}>
                    <View style={[styles.themeInner, { backgroundColor: t.color }]} />
                    {theme === t.value && (
                      <View style={styles.themeCheck}>
                        <Ionicons name="checkmark" size={10} color="#fff" />
                      </View>
                    )}
                  </View>
                  <Text style={[styles.themeLabel, { color: theme === t.value ? colors.primary : colors.mutedForeground }]}>
                    {t.label}
                  </Text>
                </Pressable>
              ))}
            </View>
          </View>
        </View>

        {/* Stats */}
        <View style={styles.section}>
          <Text style={[styles.sectionTitle, { color: colors.mutedForeground }]}>إحصائيات</Text>
          <View style={[styles.card, { backgroundColor: colors.card, borderColor: colors.border }]}>
            <View style={styles.statsRow}>
              <View style={styles.statItem}>
                <Text style={[styles.statNum, { color: colors.primary }]}>{watchHistory.length}</Text>
                <Text style={[styles.statLabel, { color: colors.mutedForeground }]}>مشاهد</Text>
              </View>
              <View style={[styles.statDivider, { backgroundColor: colors.border }]} />
              <View style={styles.statItem}>
                <Text style={[styles.statNum, { color: colors.primary }]}>{favorites.length}</Text>
                <Text style={[styles.statLabel, { color: colors.mutedForeground }]}>مفضلة</Text>
              </View>
            </View>
          </View>
        </View>

        {/* Remote Config */}
        <View style={styles.section}>
          <Text style={[styles.sectionTitle, { color: colors.mutedForeground }]}>المصادر والإعدادات</Text>
          <View style={[styles.card, { backgroundColor: colors.card, borderColor: colors.border }]}>
            <SettingRow icon="server-outline" title="مصادر البث" subtitle="التحكم في المصادر النشطة">
              <Ionicons name="chevron-back" size={16} color={colors.mutedForeground} />
            </SettingRow>
            {Object.entries(remoteConfig.sources).map(([key, enabled]) => (
              <View key={key} style={[styles.sourceRow, { borderBottomColor: colors.border }]}>
                <Text style={[styles.sourceKey, { color: colors.text }]}>{key}</Text>
                <View style={[styles.sourceDot, { backgroundColor: enabled ? "#22C55E" : "#6B7280" }]} />
              </View>
            ))}
            <Pressable
              onPress={refreshConfig}
              style={[styles.refreshBtn, { borderColor: colors.border }]}
            >
              <Ionicons name="refresh-outline" size={16} color={colors.primary} />
              <Text style={[styles.refreshText, { color: colors.primary }]}>تحديث الإعدادات من الخادم</Text>
            </Pressable>
          </View>
        </View>

        {/* App Info */}
        <View style={styles.section}>
          <Text style={[styles.sectionTitle, { color: colors.mutedForeground }]}>عن التطبيق</Text>
          <View style={[styles.card, { backgroundColor: colors.card, borderColor: colors.border }]}>
            <SettingRow icon="information-circle-outline" title="الإصدار" subtitle="1.0.0" />
            <SettingRow icon="globe-outline" title="مصادر البيانات" subtitle="AniList GraphQL · TMDB" />
            <SettingRow icon="shield-checkmark-outline" title="النصوص" subtitle="AniList GraphQL API" />
          </View>
        </View>
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1 },
  header: {
    flexDirection: "row", alignItems: "center", justifyContent: "space-between",
    paddingHorizontal: 16, paddingBottom: 12,
  },
  backBtn: { padding: 4 },
  title: { fontSize: 20, fontFamily: "Cairo_800ExtraBold" },
  section: { marginBottom: 20, paddingHorizontal: 16 },
  sectionTitle: { fontSize: 12, fontFamily: "Cairo_600SemiBold", marginBottom: 8, textTransform: "uppercase", letterSpacing: 0.5 },
  card: { borderRadius: 14, borderWidth: 1, overflow: "hidden" },
  row: { flexDirection: "row", alignItems: "center", padding: 14, gap: 12, borderBottomWidth: StyleSheet.hairlineWidth },
  iconWrap: { width: 34, height: 34, borderRadius: 10, alignItems: "center", justifyContent: "center" },
  rowText: { flex: 1 },
  rowTitle: { fontSize: 14, fontFamily: "Cairo_600SemiBold" },
  rowSubtitle: { fontSize: 12, fontFamily: "Cairo_400Regular", marginTop: 2 },
  themesRow: { flexDirection: "row", justifyContent: "space-around", padding: 16 },
  themeItem: { alignItems: "center", gap: 6 },
  themeCircle: { width: 48, height: 48, borderRadius: 24, borderWidth: 2.5, alignItems: "center", justifyContent: "center" },
  themeInner: { width: 20, height: 20, borderRadius: 10 },
  themeCheck: { position: "absolute", backgroundColor: "rgba(0,0,0,0.6)", borderRadius: 10, width: 20, height: 20, alignItems: "center", justifyContent: "center" },
  themeLabel: { fontSize: 11, fontFamily: "Cairo_600SemiBold" },
  statsRow: { flexDirection: "row", padding: 16 },
  statItem: { flex: 1, alignItems: "center", gap: 4 },
  statDivider: { width: 1, height: 40, alignSelf: "center" },
  statNum: { fontSize: 28, fontFamily: "Cairo_800ExtraBold" },
  statLabel: { fontSize: 12, fontFamily: "Cairo_400Regular" },
  sourceRow: { flexDirection: "row", alignItems: "center", paddingHorizontal: 14, paddingVertical: 10, borderBottomWidth: StyleSheet.hairlineWidth },
  sourceKey: { flex: 1, fontSize: 13, fontFamily: "Cairo_400Regular" },
  sourceDot: { width: 8, height: 8, borderRadius: 4 },
  refreshBtn: { flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 8, paddingVertical: 12, borderTopWidth: 1 },
  refreshText: { fontSize: 13, fontFamily: "Cairo_600SemiBold" },
});
