import { Tabs } from "expo-router";
import { Ionicons } from "@expo/vector-icons";
import React from "react";
import { Platform, StyleSheet, Text, View } from "react-native";
import { useColors } from "@/hooks/useColors";
import { useTvMetrics } from "@/utils/tv";

type TabIconProps = {
  name: keyof typeof Ionicons.glyphMap;
  label: string;
  color: string;
  focused: boolean;
  tvMode?: boolean;
  iconSize: number;
  fontSize: number;
};

function TabIcon({ name, label, color, focused, tvMode = false, iconSize, fontSize }: TabIconProps) {
  return (
    <View style={[styles.tabItem, tvMode && focused && styles.tabFocused]}>
      <Ionicons name={name} size={iconSize} color={color} />
      <Text
        style={[
          styles.tabLabel,
          { fontSize, lineHeight: Math.round(fontSize * 1.25), color, fontWeight: focused ? "700" : "400" },
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
  const { tv: tvMode, isTablet, size: scaleSize } = useTvMetrics();
  const isIOS = Platform.OS === "ios";
  const isWeb = Platform.OS === "web";
  const iconSize = tvMode ? 24 : scaleSize(19, 24);
  const labelSize = tvMode ? 15 : isTablet ? 10.5 : 9;

  return (
    <Tabs
      screenOptions={{
        tabBarActiveTintColor: colors.primary,
        tabBarInactiveTintColor: colors.mutedForeground,
        headerShown: false,
        tabBarShowLabel: false,
        tabBarStyle: {
          position: "absolute",
          backgroundColor: isIOS ? "transparent" : colors.background,
          borderTopWidth: 1,
          borderTopColor: colors.border,
          elevation: 0,
          height: tvMode ? 92 : isWeb ? 84 : isTablet ? 66 : 58,
          paddingBottom: tvMode ? 12 : isWeb ? 34 : isTablet ? 8 : 5,
          paddingTop: tvMode ? 10 : isTablet ? 7 : 5,
        },
        tabBarIconStyle: {
          width: "100%",
          height: tvMode ? 68 : isTablet ? 52 : 46,
          overflow: "visible",
        },
        tabBarBackground: () => null,
      }}
    >
      <Tabs.Screen
        name="index"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name="home" label="الرئيسية" color={color} focused={focused} tvMode={tvMode} iconSize={iconSize} fontSize={labelSize} />
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
            <TabIcon name="grid" label="تصفح" color={color} focused={focused} tvMode={tvMode} iconSize={iconSize} fontSize={labelSize} />
          ),
        }}
      />
      <Tabs.Screen
        name="animations"
        options={{
          href: null, // مخفي بطلب المستخدم — لا يظهر في شريط التنقل ولا يُحمَّل في الخلفية
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
            <TabIcon name="film" label="مدبلج" color={color} focused={focused} tvMode={tvMode} iconSize={iconSize} fontSize={labelSize} />
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
            <TabIcon name={focused ? "download" : "download-outline"} label="تنزيلاتي" color={color} focused={focused} tvMode={tvMode} iconSize={iconSize} fontSize={labelSize} />
          ),
        }}
      />
      <Tabs.Screen
        name="library"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name="bookmark" label="قائمتي" color={color} focused={focused} tvMode={tvMode} iconSize={iconSize} fontSize={labelSize} />
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
    gap: 2,
    width: "100%",
    paddingHorizontal: 2,
  },
  tabFocused: {
    borderRadius: 14,
    borderWidth: 2,
    borderColor: "#C4B5FD",
    paddingVertical: 5,
    shadowColor: "#A78BFA",
    shadowOpacity: 0.65,
    shadowRadius: 8,
    elevation: 6,
  },
  tabLabel: {
    fontSize: 9,
    fontFamily: "Cairo_600SemiBold",
    lineHeight: 11,
    includeFontPadding: false,
    textAlign: "center",
    width: "100%",
  },
  tvTabLabel: {
    fontSize: 15,
    lineHeight: 19,
  },
});

