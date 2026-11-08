import { Tabs } from "expo-router";
import { Ionicons } from "@expo/vector-icons";
import React from "react";
import { Platform, StyleSheet, Text, View } from "react-native";
import { useColors } from "@/hooks/useColors";
import { useApp } from "@/context/AppContext";
import { TvPressable, useTvMetrics } from "@/utils/tv";

type TabIconProps = {
  name: keyof typeof Ionicons.glyphMap;
  label: string;
  color: string;
  focused: boolean;
  tvMode?: boolean;
  isWhite?: boolean;
  iconSize: number;
  fontSize: number;
};

function TabIcon({ name, label, color, focused, tvMode = false, isWhite = false, iconSize, fontSize }: TabIconProps) {
  return (
    <View
      style={[
        styles.tabItem,
        tvMode && focused && (isWhite ? styles.tabFocusedWhite : styles.tabFocused),
      ]}
    >
      <Ionicons name={name} size={iconSize} color={color} />
      <Text
        style={[
          styles.tabLabel,
          { fontSize, lineHeight: Math.round(fontSize * 1.2), color, fontWeight: focused ? "700" : "400" },
          tvMode && styles.tvTabLabel,
        ]}
        numberOfLines={1}
        adjustsFontSizeToFit
        minimumFontScale={0.7}
      >
        {label}
      </Text>
    </View>
  );
}

export default function TabLayout() {
  const colors = useColors();
  const { theme } = useApp();
  const isWhite = theme === "white";
  const { tv: tvMode, isTablet, size: scaleSize } = useTvMetrics();
  const isIOS = Platform.OS === "ios";
  const isWeb = Platform.OS === "web";
  const iconSize = tvMode ? 16 : scaleSize(17, 18);
  const labelSize = tvMode ? 10 : isTablet ? 9.5 : 8.5;

  return (
    <Tabs
      screenOptions={{
        tabBarActiveTintColor: isWhite ? "#7C3AED" : colors.primary,
        tabBarInactiveTintColor: colors.mutedForeground,
        headerShown: false,
        tabBarShowLabel: false,
        tabBarButton: (tvMode || Platform.OS === "android")
          ? (props) => <TvPressable {...(props as any)} focusable={true} />
          : undefined,
        tabBarStyle: {
          position: "absolute",
          backgroundColor: isIOS ? "transparent" : colors.background,
          borderTopWidth: 1,
          borderTopColor: colors.border,
          elevation: 0,
          height: tvMode ? 50 : isWeb ? 74 : isTablet ? 56 : 50,
          paddingBottom: tvMode ? 3 : isWeb ? 24 : isTablet ? 5 : 3,
          paddingTop: tvMode ? 3 : isTablet ? 4 : 3,
        },
        tabBarIconStyle: {
          width: "100%",
          height: tvMode ? 42 : isTablet ? 44 : 40,
          overflow: "visible",
        },
        tabBarBackground: () => null,
      }}
    >
      <Tabs.Screen
        name="index"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name="home" label="الرئيسية" color={color} focused={focused} tvMode={tvMode} isWhite={isWhite} iconSize={iconSize} fontSize={labelSize} />
          ),
        }}
      />
      <Tabs.Screen
        name="search"
        options={{
          href: null,
        }}
      />
      <Tabs.Screen
        name="browse"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name="grid" label="تصفح" color={color} focused={focused} tvMode={tvMode} isWhite={isWhite} iconSize={iconSize} fontSize={labelSize} />
          ),
        }}
      />
      <Tabs.Screen
        name="animations"
        options={{
          href: null,
        }}
      />
      <Tabs.Screen
        name="dubbed"
        options={{
          href: null,
        }}
      />
      <Tabs.Screen
        name="aw-dubbed"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name="film" label="مدبلج" color={color} focused={focused} tvMode={tvMode} isWhite={isWhite} iconSize={iconSize} fontSize={labelSize} />
          ),
        }}
      />
      <Tabs.Screen
        name="news"
        options={{ href: null }}
      />
      <Tabs.Screen
        name="downloads"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name={focused ? "download" : "download-outline"} label="تنزيلاتي" color={color} focused={focused} tvMode={tvMode} isWhite={isWhite} iconSize={iconSize} fontSize={labelSize} />
          ),
        }}
      />
      <Tabs.Screen
        name="library"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name="bookmark" label="قائمتي" color={color} focused={focused} tvMode={tvMode} isWhite={isWhite} iconSize={iconSize} fontSize={labelSize} />
          ),
        }}
      />
    </Tabs>
  );
}

const styles = StyleSheet.create({
  tabItem: {
    alignItems: "center",
    justifyContent: "center",
    gap: 1,
    width: "100%",
    paddingHorizontal: 2,
  },
  tabFocused: {
    borderRadius: 10,
    borderWidth: 1.5,
    borderColor: "#06b6d4",
    backgroundColor: "rgba(6, 182, 212, 0.14)",
    paddingVertical: 2,
  },
  tabFocusedWhite: {
    borderRadius: 10,
    borderWidth: 2,
    borderColor: "#7C3AED",
    backgroundColor: "rgba(124, 58, 237, 0.14)",
    paddingVertical: 2,
  },
  tabLabel: {
    fontSize: 8.5,
    fontFamily: "Cairo_600SemiBold",
    lineHeight: 11,
    includeFontPadding: false,
    textAlign: "center",
    width: "100%",
  },
  tvTabLabel: {
    fontSize: 10,
    lineHeight: 13,
  },
});
