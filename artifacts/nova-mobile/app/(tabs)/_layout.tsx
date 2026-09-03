import { Tabs } from "expo-router";
import { Ionicons } from "@expo/vector-icons";
import React from "react";
import { Platform, StyleSheet, Text, View, useWindowDimensions } from "react-native";
import { useColors } from "@/hooks/useColors";
import { isTvDevice } from "@/utils/tv";

type TabIconProps = {
  name: keyof typeof Ionicons.glyphMap;
  label: string;
  color: string;
  focused: boolean;
  tvMode?: boolean;
};

function TabIcon({ name, label, color, focused, tvMode = false }: TabIconProps) {
  return (
    <View style={[styles.tabItem, tvMode && focused && styles.tabFocused]}>
      <Ionicons name={name} size={20} color={color} />
      <Text
        style={[styles.tabLabel, tvMode && styles.tvTabLabel, { color, fontWeight: focused ? "700" : "400" }]}
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
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const isIOS = Platform.OS === "ios";
  const isWeb = Platform.OS === "web";

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
          height: tvMode ? 92 : isWeb ? 84 : 62,
          paddingBottom: tvMode ? 12 : isWeb ? 34 : 6,
          paddingTop: tvMode ? 10 : 6,
        },
        tabBarIconStyle: {
          width: "100%",
          height: tvMode ? 68 : 50,
          overflow: "visible",
        },
        tabBarBackground: () => null,
      }}
    >
      <Tabs.Screen
        name="index"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name="home" label="الرئيسية" color={color} focused={focused} tvMode={tvMode} />
          ),
        }}
      />
      <Tabs.Screen
        name="search"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name="search" label="بحث" color={color} focused={focused} tvMode={tvMode} />
          ),
        }}
      />
      <Tabs.Screen
        name="browse"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name="grid" label="تصفح" color={color} focused={focused} tvMode={tvMode} />
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
            <TabIcon name="film" label="مدبلج" color={color} focused={focused} tvMode={tvMode} />
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
            <TabIcon name={focused ? "download" : "download-outline"} label="تنزيلاتي" color={color} focused={focused} tvMode={tvMode} />
          ),
        }}
      />
      <Tabs.Screen
        name="library"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name="bookmark" label="قائمتي" color={color} focused={focused} tvMode={tvMode} />
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
