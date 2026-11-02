import React, { useEffect, useState } from "react";
import { StyleSheet, View } from "react-native";
import { useLocalSearchParams } from "expo-router";
import { CatalogPageHeader, CatalogTabs } from "@/components/CatalogPageHeader";
import { MediaCatalogGrid } from "@/components/MediaCatalogGrid";
import { useColors } from "@/hooks/useColors";

const TABS = [
  { id: "all", label: "جميع المانجا" },
  { id: "manhwa", label: "مانهوا كورية" },
  { id: "ongoing", label: "مستمرة" },
  { id: "finished", label: "مكتملة" },
];

export default function MangaScreen() {
  const colors = useColors();
  const params = useLocalSearchParams<{ tab?: string }>();
  const [activeTab, setActiveTab] = useState<string>(
    params.tab && TABS.some((t) => t.id === params.tab) ? params.tab : "all"
  );

  useEffect(() => {
    if (params.tab && TABS.some((t) => t.id === params.tab)) {
      setActiveTab(params.tab);
    }
  }, [params.tab]);

  return (
    <View style={[styles.screen, { backgroundColor: colors.background }]}>
      <CatalogPageHeader title={activeTab === "manhwa" ? "المانهوا الكورية" : "المانجا والمانهوا"} />
      <CatalogTabs tabs={TABS} activeId={activeTab} onSelect={setActiveTab} />
      <MediaCatalogGrid
        key={activeTab}
        mediaType="MANGA"
        variant="manga"
        status={activeTab === "ongoing" ? "RELEASING" : activeTab === "finished" ? "FINISHED" : undefined}
        countryOfOrigin={activeTab === "manhwa" ? "KR" : undefined}
        sort="POPULARITY_DESC"
        emptyText="لا توجد أعمال مطابقة لهذا التصنيف"
      />
    </View>
  );
}

const styles = StyleSheet.create({ screen: { flex: 1 } });
