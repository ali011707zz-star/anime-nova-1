import React, { useEffect, useState } from "react";
import { I18nManager, StyleSheet, TextInput, View } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { CatalogPageHeader, CatalogTabs } from "@/components/CatalogPageHeader";
import { MediaCatalogGrid } from "@/components/MediaCatalogGrid";
import { useColors } from "@/hooks/useColors";
import { isTvDevice, TvPressable as Pressable, useTvModeOverride } from "@/utils/tv";

const IS_RTL = I18nManager.isRTL;

const TABS = [
  { id: "all", label: "المانجا" },
  { id: "manhwa", label: "المانهوا" },
  { id: "ongoing", label: "مستمرة" },
  { id: "finished", label: "مكتملة" },
];

export default function MangaScreen() {
  const colors = useColors();
  const router = useRouter();
  useTvModeOverride();
  const tvMode = isTvDevice();
  const params = useLocalSearchParams<{ tab?: string }>();
  const [activeTab, setActiveTab] = useState<string>(
    params.tab && TABS.some((t) => t.id === params.tab) ? params.tab : "all"
  );
  const [lastSourceTab, setLastSourceTab] = useState<"all" | "manhwa">(
    params.tab === "manhwa" ? "manhwa" : "all"
  );
  const [searchInput, setSearchInput] = useState("");
  const [debouncedSearch, setDebouncedSearch] = useState("");

  useEffect(() => {
    if (tvMode) {
      router.replace("/(tabs)" as any);
    }
  }, [tvMode, router]);

  useEffect(() => {
    if (params.tab && TABS.some((t) => t.id === params.tab)) {
      setActiveTab(params.tab);
      if (params.tab === "manhwa" || params.tab === "all") {
        setLastSourceTab(params.tab);
      }
    }
  }, [params.tab]);

  useEffect(() => {
    const timer = setTimeout(() => {
      setDebouncedSearch(searchInput.trim());
    }, 350);
    return () => clearTimeout(timer);
  }, [searchInput]);

  if (tvMode) return null;

  const handleSelectTab = (tabId: string) => {
    setActiveTab(tabId);
    if (tabId === "all" || tabId === "manhwa") {
      setLastSourceTab(tabId);
    }
  };

  const isManhwa = activeTab === "manhwa" || (activeTab !== "all" && lastSourceTab === "manhwa");

  return (
    <View style={[styles.screen, { backgroundColor: colors.background }]}>
      <CatalogPageHeader title={isManhwa ? "المانهوا المترجمة" : "المانجا المترجمة"} />
      <CatalogTabs tabs={TABS} activeId={activeTab} onSelect={handleSelectTab} />
      <View style={styles.searchWrap}>
        <View style={[styles.searchBox, { backgroundColor: colors.surface, borderColor: colors.border }]}>
          <Ionicons name="search-outline" size={18} color={colors.textMuted} />
          <TextInput
            value={searchInput}
            onChangeText={setSearchInput}
            placeholder={isManhwa ? "ابحث في المانهوا..." : "ابحث في المانجا..."}
            placeholderTextColor={colors.textMuted}
            style={[styles.searchInput, { color: colors.textPrimary }]}
            returnKeyType="search"
          />
          {searchInput.length > 0 && (
            <Pressable onPress={() => setSearchInput("")} style={styles.clearBtn}>
              <Ionicons name="close-circle" size={18} color={colors.textMuted} />
            </Pressable>
          )}
        </View>
      </View>
      <MediaCatalogGrid
        key={`${activeTab}-${isManhwa ? "kr" : "jp"}-${debouncedSearch}`}
        mediaType="MANGA"
        variant="manga"
        status={activeTab === "ongoing" ? "RELEASING" : activeTab === "finished" ? "FINISHED" : undefined}
        countryOfOrigin={isManhwa ? "KR" : "JP"}
        search={debouncedSearch || undefined}
        sort="POPULARITY_DESC"
        emptyText="لا توجد أعمال مطابقة لهذا التصنيف"
      />
    </View>
  );
}

const styles = StyleSheet.create({
  screen: { flex: 1 },
  searchWrap: {
    paddingHorizontal: 16,
    paddingTop: 4,
    paddingBottom: 4,
  },
  searchBox: {
    flexDirection: IS_RTL ? "row" : "row-reverse",
    alignItems: "center",
    borderRadius: 12,
    borderWidth: 1,
    paddingHorizontal: 12,
    height: 42,
    gap: 8,
  },
  searchInput: {
    flex: 1,
    fontSize: 13,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    paddingVertical: 0,
  },
  clearBtn: {
    padding: 2,
  },
});
