import { Ionicons } from "@expo/vector-icons";
import React from "react";
import {
  Modal,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
  useWindowDimensions,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import type { ThemePalette } from "@/constants/colors";

export type AnimeFilterOption = { label: string; value: string };

type Props = {
  visible: boolean;
  resultCount: number;
  sortOptions: AnimeFilterOption[];
  formatOptions: AnimeFilterOption[];
  statusOptions: AnimeFilterOption[];
  seasonOptions: AnimeFilterOption[];
  genreOptions: AnimeFilterOption[];
  years: string[];
  sort: string;
  format: string;
  status: string;
  season: string;
  genre: string;
  year: string;
  onSortChange: (value: string) => void;
  onFormatChange: (value: string) => void;
  onStatusChange: (value: string) => void;
  onSeasonChange: (value: string) => void;
  onGenreChange: (value: string) => void;
  onYearChange: (value: string) => void;
  onReset: () => void;
  onClose: () => void;
};

export function AnimeFilterSheet({
  visible,
  resultCount,
  sortOptions,
  formatOptions,
  statusOptions,
  seasonOptions,
  genreOptions,
  years,
  sort,
  format,
  status,
  season,
  genre,
  year,
  onSortChange,
  onFormatChange,
  onStatusChange,
  onSeasonChange,
  onGenreChange,
  onYearChange,
  onReset,
  onClose,
}: Props) {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const { height, width } = useWindowDimensions();
  const styles = createStyles(colors);
  const numberedYears = years.filter((item) => /^\d{4}$/.test(item));

  const section = (title: string, options: AnimeFilterOption[], value: string, onChange: (next: string) => void, grid = false) => (
    <View style={styles.section}>
      <Text style={styles.sectionTitle}>{title}</Text>
      <View style={[styles.chips, grid && styles.sortGrid]}>
        {options.map((option) => {
          const selected = value === option.value;
          return (
            <Pressable
              key={`${title}-${option.value || "all"}`}
              accessibilityRole="button"
              accessibilityState={{ selected }}
              onPress={() => onChange(option.value)}
              style={[styles.chip, grid && styles.sortChip, selected && styles.chipSelected]}
            >
              <Text style={[styles.chipText, selected && styles.chipTextSelected]}>
                {option.label}
              </Text>
            </Pressable>
          );
        })}
      </View>
    </View>
  );

  return (
    <Modal
      visible={visible}
      animationType="slide"
      transparent
      presentationStyle="overFullScreen"
      onRequestClose={onClose}
    >
      <View style={styles.overlay}>
        <Pressable
          accessibilityLabel="إغلاق الفلاتر"
          onPress={onClose}
          style={StyleSheet.absoluteFill}
        />
        <View
          style={[
            styles.sheet,
            {
              maxHeight: height * 0.84,
              marginHorizontal: Math.min(14, width * 0.04),
              marginBottom: Math.max(insets.bottom, 10) + 8,
              paddingBottom: Math.max(insets.bottom, 10),
            },
          ]}
        >
          <View style={styles.header}>
            <View style={styles.headerActions}>
              <Pressable
                accessibilityLabel="إغلاق"
                onPress={onClose}
                style={styles.closeButton}
              >
                <Ionicons name="close" size={19} color={colors.textPrimary} />
              </Pressable>
              <Pressable onPress={onReset} style={styles.resetButton}>
                <Text style={styles.resetText}>إعادة ضبط</Text>
              </Pressable>
            </View>
            <Text style={styles.title}>فلترة وتصفية الأنمي</Text>
          </View>

          <ScrollView
            style={styles.body}
            contentContainerStyle={styles.bodyContent}
            showsVerticalScrollIndicator={false}
            keyboardShouldPersistTaps="handled"
          >
            {section("الترتيب حسب", sortOptions, sort, onSortChange, true)}
            {section("الموسم", seasonOptions, season, onSeasonChange)}
            {section("الحالة", statusOptions, status, onStatusChange)}
            {section("النوع", formatOptions, format, onFormatChange)}
            {section("التصنيفات", genreOptions, genre, onGenreChange)}

            <View style={styles.section}>
              <View style={styles.yearHeading}>
                <Text style={styles.sectionTitle}>سنة العرض</Text>
                <Text style={styles.yearRange}>({numberedYears[numberedYears.length - 1]} - {numberedYears[0]})</Text>
              </View>
              <View style={styles.yearGrid}>
                {years.map((item) => {
                  const value = item === "الكل" ? "" : item;
                  const selected = year === value;
                  return (
                    <Pressable
                      key={`year-${item}`}
                      accessibilityRole="button"
                      accessibilityState={{ selected }}
                      onPress={() => onYearChange(value)}
                      style={[styles.yearChip, selected && styles.chipSelected]}
                    >
                      <Text style={[styles.yearText, selected && styles.chipTextSelected]}>
                        {item}
                      </Text>
                    </Pressable>
                  );
                })}
              </View>
            </View>
          </ScrollView>

          <View style={styles.footer}>
            <Pressable onPress={onClose} style={styles.applyButton}>
              <Text style={styles.applyText}>عرض النتائج ({resultCount} أنمي)</Text>
            </Pressable>
          </View>
        </View>
      </View>
    </Modal>
  );
}

const createStyles = (colors: ThemePalette) => StyleSheet.create({
  overlay: {
    flex: 1,
    backgroundColor: "rgba(0,0,0,0.74)",
    justifyContent: "flex-end",
  },
  sheet: {
    alignSelf: "center",
    width: "100%",
    overflow: "hidden",
    backgroundColor: colors.surface,
    borderColor: colors.border,
    borderWidth: 1,
    borderRadius: 26,
  },
  header: {
    minHeight: 64,
    flexDirection: "row",
    direction: "ltr",
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 16,
    borderBottomWidth: StyleSheet.hairlineWidth,
    borderBottomColor: colors.border,
  },
  headerActions: { flexDirection: "row", alignItems: "center", gap: 8 },
  closeButton: {
    width: 36,
    height: 36,
    borderRadius: 18,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: colors.input,
    borderWidth: 1,
    borderColor: colors.border,
  },
  resetButton: {
    borderRadius: 12,
    paddingHorizontal: 12,
    paddingVertical: 7,
    backgroundColor: colors.destructiveSurface,
    borderWidth: 1,
    borderColor: colors.destructiveBorder,
  },
  resetText: { color: colors.destructive, fontSize: 12, fontFamily: "Cairo_700Bold" },
  title: {
    color: colors.textPrimary,
    fontSize: 16,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
    writingDirection: "rtl",
  },
  body: { flexShrink: 1 },
  bodyContent: { paddingHorizontal: 16, paddingTop: 16, paddingBottom: 20 },
  section: { marginBottom: 18 },
  sectionTitle: {
    color: colors.textMuted,
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
    writingDirection: "rtl",
    marginBottom: 9,
  },
  chips: { flexDirection: "row", flexWrap: "wrap", gap: 7, justifyContent: "flex-start" },
  sortGrid: { justifyContent: "space-between" },
  chip: {
    minHeight: 40,
    alignItems: "center",
    justifyContent: "center",
    paddingHorizontal: 12,
    paddingVertical: 7,
    borderRadius: 14,
    backgroundColor: colors.input,
    borderWidth: 1,
    borderColor: colors.border,
  },
  sortChip: { width: "48%" },
  chipSelected: { backgroundColor: colors.destructive, borderColor: colors.destructive },
  chipText: {
    color: colors.textPrimary,
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
    textAlign: "center",
    writingDirection: "rtl",
  },
  chipTextSelected: { color: colors.destructiveForeground },
  yearHeading: { flexDirection: "row", justifyContent: "flex-end", alignItems: "center", gap: 5 },
  yearRange: {
    marginBottom: 9,
    color: colors.textMuted,
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  yearGrid: { flexDirection: "row", flexWrap: "wrap", justifyContent: "space-between", gap: 6 },
  yearChip: {
    width: "23%",
    minHeight: 42,
    alignItems: "center",
    justifyContent: "center",
    borderRadius: 13,
    backgroundColor: colors.input,
    borderWidth: 1,
    borderColor: colors.border,
  },
  yearText: { color: colors.textPrimary, fontSize: 13, fontFamily: "Cairo_700Bold" },
  footer: {
    paddingHorizontal: 14,
    paddingTop: 12,
    borderTopWidth: 1,
    borderTopColor: colors.border,
    backgroundColor: colors.surface,
  },
  applyButton: {
    minHeight: 54,
    alignItems: "center",
    justifyContent: "center",
    borderRadius: 16,
    backgroundColor: colors.destructive,
  },
  applyText: {
    color: colors.destructiveForeground,
    fontSize: 14,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "center",
    writingDirection: "rtl",
  },
});
