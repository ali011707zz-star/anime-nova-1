import { Tabs } from "expo-router";
import { Ionicons } from "@expo/vector-icons";
import React from "react";
import { Platform, StyleSheet, Text, View } from "react-native";
import { useColors } from "@/hooks/useColors";

type TabIconProps = {
  name: keyof typeof Ionicons.glyphMap;
  label: string;
  color: string;
  focused: boolean;
};

function TabIcon({ name, label, color, focused }: TabIconProps) {
  return (
    <View style={styles.tabItem}>
      <Ionicons name={name} size={20} color={color} />
      <Text
        style={[styles.tabLabel, { color, fontWeight: focused ? "700" : "400" }]}
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
          backgroundColor: isIOS ? "transparent" : "rgba(9,9,11,0.96)",
          borderTopWidth: 1,
          borderTopColor: colors.border,
          elevation: 0,
          height: isWeb ? 84 : 62,
          paddingBottom: isWeb ? 34 : 6,
          paddingTop: 6,
        },
        tabBarIconStyle: {
          width: "100%",
          height: 50,
          overflow: "visible",
        },
        tabBarBackground: () => null,
      }}
    >
      <Tabs.Screen
        name="index"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name="home" label="الرئيسية" color={color} focused={focused} />
          ),
        }}
      />
      <Tabs.Screen
        name="search"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name="search" label="بحث" color={color} focused={focused} />
          ),
        }}
      />
      <Tabs.Screen
        name="browse"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name="grid" label="تصفح" color={color} focused={focused} />
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
        name="news"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name={focused ? "newspaper" : "newspaper-outline"} label="أخبار" color={color} focused={focused} />
          ),
        }}
      />
      <Tabs.Screen
        name="library"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name="bookmark" label="قائمتي" color={color} focused={focused} />
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
  tabLabel: {
    fontSize: 9,
    fontFamily: "Cairo_600SemiBold",
    lineHeight: 11,
    includeFontPadding: false,
    textAlign: "center",
    width: "100%",
  },
});
