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
      <Ionicons name={name} size={22} color={color} />
      <Text style={[styles.tabLabel, { color, fontWeight: focused ? "700" : "400" }]}>
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
          height: isWeb ? 84 : 60,
          paddingBottom: isWeb ? 34 : 0,
        },
        tabBarBackground: () => null,
      }}
    >
      <Tabs.Screen
        name="index"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name={focused ? "home" : "home"} label="الرئيسية" color={color} focused={focused} />
          ),
        }}
      />
      <Tabs.Screen
        name="search"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name={focused ? "search" : "search"} label="بحث" color={color} focused={focused} />
          ),
        }}
      />
      <Tabs.Screen
        name="browse"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name={focused ? "grid" : "grid"} label="تصفح" color={color} focused={focused} />
          ),
        }}
      />
      <Tabs.Screen
        name="animations"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabIcon name={focused ? "film" : "film"} label="أنيميشن" color={color} focused={focused} />
          ),
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
            <TabIcon name={focused ? "bookmark" : "bookmark"} label="قائمتي" color={color} focused={focused} />
          ),
        }}
      />
    </Tabs>
  );
}

const styles = StyleSheet.create({
  tabItem: { alignItems: "center", justifyContent: "center", gap: 2, paddingTop: 6 },
  tabLabel: { fontSize: 9, fontFamily: "Cairo_600SemiBold" },
});
