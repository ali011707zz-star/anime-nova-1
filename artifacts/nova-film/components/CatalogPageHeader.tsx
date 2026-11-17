import { Ionicons } from "@expo/vector-icons";
import React, { useState } from "react";
import { I18nManager, Platform, ScrollView, StyleSheet, Text, View } from "react-native";
import { useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { DrawerMenu } from "@/components/DrawerMenu";
import { useColors } from "@/hooks/useColors";
import { tvFocusStyle, TvPressable as Pressable, useTvMetrics } from "@/utils/tv";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

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
  const { tv: tvMode, size: scaleSize } = useTvMetrics();

  const goBack = () => {
    if (onBack) {
      onBack();
    } else if (router.canGoBack()) {
      router.back();
    } else {
      router.replace("/(tabs)" as any);
    }
  };

  const btnSize = scaleSize(36, 48);

  return (
    <>
      <View
        style={[
          styles.header,
          {
            height: topInset + scaleSize(50, 66),
            paddingTop: topInset,
            paddingHorizontal: scaleSize(13, 32),
            borderBottomColor: colors.border,
          },
        ]}
      >
        <View style={styles.rightTitleGroup}>
          <Pressable
            accessibilityLabel="رجوع"
            onPress={goBack}
            onFocus={() => setFocusedAction("back")}
            onBlur={() => setFocusedAction((current) => current === "back" ? null : current)}
            focusable={tvMode}
            style={[
              styles.backButton,
              {
                width: btnSize,
                height: btnSize,
                borderRadius: scaleSize(11, 14),
                backgroundColor: colors.surface,
                borderColor: colors.border,
              },
              tvMode && tvFocusStyle(focusedAction === "back"),
            ]}
          >
            <Ionicons name="chevron-forward" size={scaleSize(19, 25)} color={colors.textPrimary} />
          </Pressable>

          <Text
            numberOfLines={1}
            adjustsFontSizeToFit
            minimumFontScale={0.82}
            style={[styles.title, { fontSize: scaleSize(16.5, 24), color: colors.textPrimary }]}
          >
            {title}
          </Text>
        </View>

        <View style={styles.actions}>
          <Pressable
            accessibilityLabel="البحث"
            onPress={() => router.push("/(tabs)/search" as any)}
            onFocus={() => setFocusedAction("search")}
            onBlur={() => setFocusedAction((current) => current === "search" ? null : current)}
            focusable={tvMode}
            style={[
              styles.iconButton,
              {
                width: btnSize,
                height: btnSize,
                borderRadius: scaleSize(11, 14),
                backgroundColor: colors.surface,
                borderColor: colors.border,
              },
              tvMode && tvFocusStyle(focusedAction === "search"),
            ]}
          >
            <Ionicons name="search" size={scaleSize(17, 23)} color={colors.textPrimary} />
          </Pressable>
          <Pressable
            accessibilityLabel="فتح القائمة"
            onPress={() => setDrawerVisible(true)}
            onFocus={() => setFocusedAction("menu")}
            onBlur={() => setFocusedAction((current) => current === "menu" ? null : current)}
            focusable={tvMode}
            style={[
              styles.iconButton,
              {
                width: btnSize,
                height: btnSize,
                borderRadius: scaleSize(11, 14),
                backgroundColor: colors.surface,
                borderColor: colors.border,
              },
              tvMode && tvFocusStyle(focusedAction === "menu"),
            ]}
          >
            <Ionicons name="menu" size={scaleSize(19, 25)} color={colors.textPrimary} />
          </Pressable>
        </View>
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
  const { tv: tvMode, size: scaleSize } = useTvMetrics();
  const [focusedId, setFocusedId] = useState<string | null>(null);

  return (
    <View style={[styles.tabsFrame, { borderBottomColor: colors.border }]}>
      <ScrollView
        horizontal
        showsHorizontalScrollIndicator={false}
        contentContainerStyle={[styles.tabsContent, { gap: scaleSize(16, 26), paddingHorizontal: scaleSize(13, 32) }]}
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
              style={[styles.tab, { minHeight: scaleSize(44, 56) }, tvMode && tvFocusStyle(focusedId === tab.id)]}
            >
              <Text
                style={[
                  styles.tabText,
                  { fontSize: scaleSize(12.5, 17), color: active ? colors.textPrimary : colors.textMuted },
                  active && { color: colors.homeAccent },
                ]}
              >
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
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    borderBottomWidth: StyleSheet.hairlineWidth,
  },
  rightTitleGroup: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 9,
    flex: 1,
    minWidth: 0,
  },
  actions: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 7,
  },
  iconButton: {
    width: 38,
    height: 38,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  title: {
    flex: 1,
    textAlign: "right",
    fontSize: 17,
    fontFamily: "Cairo_800ExtraBold",
  },
  backButton: {
    width: 38,
    height: 38,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  tabsFrame: { borderBottomWidth: StyleSheet.hairlineWidth },
  tabsContent: { alignItems: "stretch", gap: 18, paddingHorizontal: 14 },
  tab: { minHeight: 46, justifyContent: "center", alignItems: "center", paddingHorizontal: 3, position: "relative" },
  tabText: { fontSize: 12.5, fontFamily: "Cairo_700Bold", paddingBottom: 7 },
  tabIndicator: { position: "absolute", bottom: 0, height: 3, left: 0, right: 0, borderTopLeftRadius: 3, borderTopRightRadius: 3 },
});

