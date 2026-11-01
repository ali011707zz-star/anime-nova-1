import { Ionicons } from "@expo/vector-icons";
import React, { useMemo, useState } from "react";
import { FlatList, StyleSheet, Text, View } from "react-native";
import { CatalogPageHeader, CatalogTabs } from "@/components/CatalogPageHeader";
import { MediaCatalogGrid } from "@/components/MediaCatalogGrid";
import { useColors } from "@/hooks/useColors";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";

const FIRST_SEASON_YEAR = 1990;
const SEASONS = [
  { id: "WINTER", label: "شتاء", index: 0 },
  { id: "SPRING", label: "ربيع", index: 1 },
  { id: "SUMMER", label: "صيف", index: 2 },
  { id: "FALL", label: "خريف", index: 3 },
] as const;

type SeasonId = (typeof SEASONS)[number]["id"];
type SeasonChoice = { season: SeasonId; year: number };

const TABS = [
  { id: "all", label: "جميع المواسم" },
  { id: "upcoming", label: "الموسم القادم" },
  { id: "current", label: "الموسم الحالي" },
  { id: "previous", label: "الموسم السابق" },
];

function getCurrentSeason(): SeasonChoice {
  const now = new Date();
  const month = now.getMonth() + 1;
  const index = month <= 2 ? 0 : month <= 5 ? 1 : month <= 8 ? 2 : 3;
  return { season: SEASONS[index].id, year: now.getFullYear() };
}

function shiftSeason(choice: SeasonChoice, amount: number): SeasonChoice {
  const currentIndex = SEASONS.findIndex((item) => item.id === choice.season);
  const absoluteIndex = choice.year * 4 + currentIndex + amount;
  const year = Math.floor(absoluteIndex / 4);
  const seasonIndex = ((absoluteIndex % 4) + 4) % 4;
  return { season: SEASONS[seasonIndex].id, year };
}

function seasonName(season: SeasonId) {
  return SEASONS.find((item) => item.id === season)?.label || "";
}

export default function SeasonsScreen() {
  const colors = useColors();
  const [activeTab, setActiveTab] = useState("all");
  const [selectedSeason, setSelectedSeason] = useState<SeasonChoice | null>(null);
  const [focusedSeasonKey, setFocusedSeasonKey] = useState<string | null>(null);
  const current = useMemo(getCurrentSeason, []);
  const relativeSeason = activeTab === "upcoming"
    ? shiftSeason(current, 1)
    : activeTab === "previous"
      ? shiftSeason(current, -1)
      : current;
  const shownSeason = selectedSeason || (activeTab === "all" ? null : relativeSeason);
  const tvMode = isTvDevice();

  const seasonRows = useMemo(() => {
    const now = new Date();
    const rows: SeasonChoice[] = [];
    for (let year = now.getFullYear(); year >= FIRST_SEASON_YEAR; year -= 1) {
      for (let index = 3; index >= 0; index -= 1) {
        rows.push({ season: SEASONS[index].id, year });
      }
    }
    return rows;
  }, []);

  const handleTabSelect = (id: string) => {
    setActiveTab(id);
    setSelectedSeason(null);
  };

  return (
    <View style={[styles.screen, { backgroundColor: colors.background }]}>
      <CatalogPageHeader
        title="المواسم"
        onBack={activeTab === "all" && selectedSeason ? () => setSelectedSeason(null) : undefined}
      />
      <CatalogTabs tabs={TABS} activeId={activeTab} onSelect={handleTabSelect} />

      {activeTab === "all" && !selectedSeason ? (
        <FlatList
          data={seasonRows}
          keyExtractor={(item) => `${item.season}-${item.year}`}
          contentContainerStyle={styles.seasonList}
          showsVerticalScrollIndicator={false}
          initialNumToRender={18}
          windowSize={9}
          renderItem={({ item }) => (
            <Pressable
              accessibilityRole="button"
              accessibilityLabel={`${seasonName(item.season)} عام ${item.year}`}
              onPress={() => setSelectedSeason(item)}
              onFocus={() => setFocusedSeasonKey(`${item.season}-${item.year}`)}
              onBlur={() => setFocusedSeasonKey((current) => current === `${item.season}-${item.year}` ? null : current)}
              focusable={tvMode}
              style={[
                styles.seasonRow,
                { borderBottomColor: colors.border },
                tvMode && tvFocusStyle(focusedSeasonKey === `${item.season}-${item.year}`),
              ]}
            >
              <Ionicons
                name="chevron-back"
                size={20}
                color={colors.textPrimary}
                style={styles.seasonArrow}
              />
              <Text style={[styles.seasonText, { color: colors.textPrimary }]}>
                {seasonName(item.season)} عام {item.year}
              </Text>
            </Pressable>
          )}
        />
      ) : shownSeason ? (
        <View style={styles.catalog}>
          <Text style={[styles.sectionTitle, { color: colors.textPrimary }]}>
            أنميات موسم {seasonName(shownSeason.season)} {shownSeason.year}
          </Text>
          <MediaCatalogGrid
            key={`${shownSeason.season}-${shownSeason.year}`}
            mediaType="ANIME"
            variant="stats"
            season={shownSeason.season}
            seasonYear={shownSeason.year}
            sort="POPULARITY_DESC"
            emptyText="لا توجد أنميات مسجلة لهذا الموسم"
          />
        </View>
      ) : null}
    </View>
  );
}

const styles = StyleSheet.create({
  screen: { flex: 1 },
  seasonList: { paddingBottom: 100 },
  seasonRow: {
    minHeight: 84,
    borderBottomWidth: StyleSheet.hairlineWidth,
    justifyContent: "center",
    alignItems: "center",
    paddingHorizontal: 58,
  },
  seasonArrow: {
    position: "absolute",
    end: 20,
    top: "50%",
    transform: [{ translateY: -10 }],
  },
  seasonText: {
    alignSelf: "stretch",
    fontSize: 18,
    textAlign: "center",
    writingDirection: "rtl",
    fontFamily: "Cairo_700Bold",
  },
  catalog: { flex: 1 },
  sectionTitle: {
    fontSize: 16,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
    writingDirection: "rtl",
    alignSelf: "stretch",
    paddingHorizontal: 18,
    paddingTop: 18,
    paddingBottom: 8,
  },
});
