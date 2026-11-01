import React from "react";
import { StyleSheet, View } from "react-native";
import { CatalogPageHeader } from "@/components/CatalogPageHeader";
import { MediaCatalogGrid } from "@/components/MediaCatalogGrid";
import { useColors } from "@/hooks/useColors";

export default function UpcomingScreen() {
  const colors = useColors();

  return (
    <View style={[styles.screen, { backgroundColor: colors.background }]}>
      <CatalogPageHeader title="قادم قريباً" />
      <MediaCatalogGrid
        mediaType="ANIME"
        variant="upcoming"
        status="NOT_YET_RELEASED"
        sort="START_DATE"
        emptyText="لا توجد إصدارات قادمة حالياً"
      />
    </View>
  );
}

const styles = StyleSheet.create({ screen: { flex: 1 } });
