import React, { useState } from "react";
import { StyleSheet, View } from "react-native";
import { CatalogPageHeader, CatalogTabs } from "@/components/CatalogPageHeader";
import { MediaCatalogGrid } from "@/components/MediaCatalogGrid";
import { useColors } from "@/hooks/useColors";

const TABS = [
  { id: "all", label: "جميع المانجا" },
  { id: "ongoing", label: "مستمرة" },
  { id: "finished", label: "مكتملة" },
  { id: "manhwa", label: "مانهوا ملونة" },
];

export default function MangaScreen() {
  const colors = useColors();
  const [activeTab, setActiveTab] = useState("all");

  return (
    <View style={[styles.screen, { backgroundColor: colors.background }]}>
      <CatalogPageHeader title="المانجا" />
      <CatalogTabs tabs={TABS} activeId={activeTab} onSelect={setActiveTab} />
      <MediaCatalogGrid
        key={activeTab}
        mediaType="MANGA"
        variant="manga"
        status={activeTab === "ongoing" ? "RELEASING" : activeTab === "finished" ? "FINISHED" : undefined}
        countryOfOrigin={activeTab === "manhwa" ? "KR" : undefined}
        sort="POPULARITY_DESC"
        emptyText="لا توجد مانجا مطابقة لهذا التصنيف"
      />
    </View>
  );
}

const styles = StyleSheet.create({ screen: { flex: 1 } });
