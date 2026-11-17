import React from "react";
import { StyleSheet, View } from "react-native";
import { CatalogPageHeader } from "@/components/CatalogPageHeader";
import { MediaCatalogGrid } from "@/components/MediaCatalogGrid";
import { useColors } from "@/hooks/useColors";

export default function UpcomingScreen() {
  const colors = useColors();

  return (
    <View style={[styles.screen, { backgroundColor: colors.background }]}>
      <CatalogPageHeader title="أحدث الإصدارات" />
      <MediaCatalogGrid
        mediaType="FILM"
        variant="upcoming"
        sort="START_DATE"
        emptyText="لا توجد إصدارات حديثة حالياً"
      />
    </View>
  );
}

const styles = StyleSheet.create({ screen: { flex: 1 } });
