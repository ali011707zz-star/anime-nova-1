import React, { useState } from "react";
import { StyleSheet, View } from "react-native";
import { CatalogPageHeader, CatalogTabs } from "@/components/CatalogPageHeader";
import { MediaCatalogGrid } from "@/components/MediaCatalogGrid";
import { useColors } from "@/hooks/useColors";

const TABS = [
  { id: "all", label: "أفضل الأعمال" },
  { id: "movies", label: "أفضل الأفلام" },
  { id: "series", label: "أفضل المسلسلات" },
  { id: "animation", label: "أفضل الأنميشن" },
];

export default function GlobalStatsScreen() {
  const colors = useColors();
  const [activeTab, setActiveTab] = useState("all");
  const selected = TABS.find((tab) => tab.id === activeTab)?.id || "all";

  return (
    <View style={[styles.screen, { backgroundColor: colors.background }]}>
      <CatalogPageHeader title="الإحصائيات والتقييم العالمي" />
      <CatalogTabs tabs={TABS} activeId={selected} onSelect={setActiveTab} />
      <MediaCatalogGrid
        key={selected}
        mediaType="FILM"
        variant="stats"
        category={
          selected === "movies"
            ? "movie"
            : selected === "series"
              ? "series"
              : selected === "animation"
                ? "animation"
                : "all"
        }
        sort="SCORE_DESC"
        emptyText="لا توجد نتائج لهذا التصنيف"
      />
    </View>
  );
}

const styles = StyleSheet.create({ screen: { flex: 1 } });
