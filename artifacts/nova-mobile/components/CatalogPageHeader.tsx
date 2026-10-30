import { Ionicons } from "@expo/vector-icons";
import React, { useState } from "react";
import { I18nManager, Platform, ScrollView, StyleSheet, Text, View } from "react-native";
import { useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { DrawerMenu } from "@/components/DrawerMenu";
import { useColors } from "@/hooks/useColors";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";

type HeaderProps = {
  title: string;
  onBack?: () => void;
};

export function CatalogPageHeader({ title, onBack }: HeaderProps) {
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const colors = useColors();
  const [drawerVisible, setDrawerVisible] = useState(false);
  const [focusedAction, setFocusedAction] = useState<string | null>(null);
  const topInset = Platform.OS === "web" ? 67 : insets.top;
  const tvMode = isTvDevice();

  const goBack = () => {
    if (onBack) {
      onBack();
    } else if (router.canGoBack()) {
      router.back();
    } else {
      router.replace("/(tabs)" as any);
    }
  };

  return (
    <>
      <View style={[styles.header, { height: topInset + 54, paddingTop: topInset, borderBottomColor: colors.border }]}>
        <View style={[styles.actions, I18nManager.isRTL && styles.rtlActions, { top: topInset + 6 }]}>
          <Pressable
            accessibilityLabel="فتح القائمة"
            onPress={() => setDrawerVisible(true)}
            onFocus={() => setFocusedAction("menu")}
            onBlur={() => setFocusedAction((current) => current === "menu" ? null : current)}
            focusable={tvMode}
            style={[styles.iconButton, { backgroundColor: colors.surface, borderColor: colors.border }, tvMode && tvFocusStyle(focusedAction === "menu")]}
          >
            <Ionicons name="menu" size={21} color={colors.textPrimary} />
          </Pressable>
          <Pressable
            accessibilityLabel="البحث"
            onPress={() => router.push("/(tabs)/search" as any)}
            onFocus={() => setFocusedAction("search")}
            onBlur={() => setFocusedAction((current) => current === "search" ? null : current)}
            focusable={tvMode}
            style={[styles.iconButton, { backgroundColor: colors.surface, borderColor: colors.border }, tvMode && tvFocusStyle(focusedAction === "search")]}
          >
            <Ionicons name="search" size={19} color={colors.textPrimary} />
          </Pressable>
        </View>

        <Text
          numberOfLines={1}
          style={[styles.title, { color: colors.textPrimary, top: topInset, bottom: 0 }]}
        >
          {title}
        </Text>

        <Pressable
          accessibilityLabel="رجوع"
          onPress={goBack}
          onFocus={() => setFocusedAction("back")}
          onBlur={() => setFocusedAction((current) => current === "back" ? null : current)}
          focusable={tvMode}
          style={[styles.backButton, { top: topInset + 6, backgroundColor: colors.surface, borderColor: colors.border }, tvMode && tvFocusStyle(focusedAction === "back")]}
        >
          <Ionicons name="arrow-back" size={21} color={colors.textPrimary} style={{ transform: [{ scaleX: -1 }] }} />
        </Pressable>
      </View>
      <DrawerMenu visible={drawerVisible} onClose={() => setDrawerVisible(false)} />
    </>
  );
}

export type CatalogTab = { id: string; label: string };

type TabsProps = {
  tabs: CatalogTab[];
  activeId: string;
  onSelect: (id: string) => void;
};

export function CatalogTabs({ tabs, activeId, onSelect }: TabsProps) {
  const colors = useColors();
  const tvMode = isTvDevice();
  const [focusedId, setFocusedId] = useState<string | null>(null);

  return (
    <View style={[styles.tabsFrame, { borderBottomColor: colors.border }]}>
      <ScrollView
        horizontal
        showsHorizontalScrollIndicator={false}
        contentContainerStyle={styles.tabsContent}
      >
        {tabs.map((tab) => {
          const active = tab.id === activeId;
          return (
            <Pressable
              key={tab.id}
              accessibilityRole="tab"
              accessibilityState={{ selected: active }}
              testID={`catalog-tab-${tab.id}`}
              onPress={() => onSelect(tab.id)}
              onFocus={() => setFocusedId(tab.id)}
              onBlur={() => setFocusedId((current) => current === tab.id ? null : current)}
              focusable={tvMode}
              style={[styles.tab, tvMode && tvFocusStyle(focusedId === tab.id)]}
            >
              <Text style={[styles.tabText, { color: active ? colors.textPrimary : colors.textMuted }, active && { color: colors.homeAccent }]}>
                {tab.label}
              </Text>
              {active && <View style={[styles.tabIndicator, { backgroundColor: colors.homeAccent }]} />}
            </Pressable>
          );
        })}
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  header: {
    position: "relative",
    borderBottomWidth: StyleSheet.hairlineWidth,
    justifyContent: "center",
  },
  actions: {
    position: "absolute",
    right: 14,
    flexDirection: "row",
    gap: 8,
    zIndex: 2,
  },
  rtlActions: { flexDirection: "row-reverse" },
  iconButton: {
    width: 38,
    height: 38,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  title: {
    position: "absolute",
    left: 60,
    right: 104,
    textAlign: "right",
    textAlignVertical: "center",
    fontSize: 18,
    fontFamily: "Cairo_800ExtraBold",
  },
  backButton: {
    position: "absolute",
    left: 14,
    width: 38,
    height: 38,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
    zIndex: 2,
  },
  tabsFrame: { borderBottomWidth: StyleSheet.hairlineWidth },
  tabsContent: { alignItems: "stretch", gap: 20, paddingHorizontal: 14 },
  tab: { minHeight: 49, justifyContent: "center", alignItems: "center", paddingHorizontal: 3, position: "relative" },
  tabText: { fontSize: 13, fontFamily: "Cairo_700Bold", paddingBottom: 7 },
  tabIndicator: { position: "absolute", bottom: 0, height: 3, left: 0, right: 0, borderTopLeftRadius: 3, borderTopRightRadius: 3 },
});
