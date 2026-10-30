import React, { useState } from "react";
import { StyleSheet, View } from "react-native";
import { CatalogPageHeader, CatalogTabs } from "@/components/CatalogPageHeader";
import { MediaCatalogGrid } from "@/components/MediaCatalogGrid";
import { useColors } from "@/hooks/useColors";

const TABS = [
  { id: "anime", label: "أفضل الأنميات" },
  { id: "ongoing", label: "أفضل الأنميات المستمرة" },
  { id: "movies", label: "أفضل الأفلام" },
  { id: "series", label: "أفضل المسلسلات" },
  { id: "ova", label: "أفضل الأوفا" },
  { id: "ona", label: "أفضل الأونا" },
];

export default function GlobalStatsScreen() {
  const colors = useColors();
  const [activeTab, setActiveTab] = useState("anime");
  const selected = TABS.find((tab) => tab.id === activeTab)?.id || "anime";

  return (
    <View style={[styles.screen, { backgroundColor: colors.background }]}>
      <CatalogPageHeader title="الإحصائيات العالمية" />
      <CatalogTabs tabs={TABS} activeId={selected} onSelect={setActiveTab} />
      <MediaCatalogGrid
        key={selected}
        mediaType="ANIME"
        variant="stats"
        status={selected === "ongoing" ? "RELEASING" : undefined}
        format={
          selected === "movies" ? "MOVIE" :
          selected === "series" ? "TV" :
          selected === "ova" ? "OVA" :
          selected === "ona" ? "ONA" : undefined
        }
        sort="SCORE_DESC"
        emptyText="لا توجد نتائج لهذا التصنيف"
      />
    </View>
  );
}

const styles = StyleSheet.create({ screen: { flex: 1 } });
