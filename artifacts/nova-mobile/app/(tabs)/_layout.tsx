import { Tabs } from "expo-router";
import { Ionicons } from "@expo/vector-icons";
import React from "react";
import { Platform, StyleSheet, Text, View } from "react-native";
import { useColors } from "@/hooks/useColors";
import { TvPressable, useTvFullScreenOverlay, useTvMetrics } from "@/utils/tv";

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
    <View style={styles.tabItem}>
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
  const overlayActive = useTvFullScreenOverlay();
  const isIOS = Platform.OS === "ios";
  const isWeb = Platform.OS === "web";
  const iconSize = tvMode ? 17 : scaleSize(17, 18);
  const labelSize = tvMode ? 10.5 : isTablet ? 9.5 : 8.5;

  return (
    <Tabs
      screenOptions={{
        tabBarActiveTintColor: colors.primary,
        tabBarInactiveTintColor: colors.mutedForeground,
        headerShown: false,
        tabBarShowLabel: false,
        tabBarButton: tvMode
          ? (props) => {
              const rawStyle = props.style;
              return (
                <TvPressable
                  {...(props as any)}
                  focusable={true}
                  style={({ focused }) => [
                    typeof rawStyle === "function" ? (rawStyle as any)({ pressed: false }) : rawStyle,
                    styles.tvTabButton,
                    focused && styles.tvTabDpadFocused,
                  ]}
                />
              );
            }
          : undefined,
        tabBarStyle: {
          display: overlayActive ? "none" : "flex",
          position: "absolute",
          backgroundColor: isIOS ? "transparent" : colors.background,
          borderTopWidth: 1,
          borderTopColor: colors.border,
          elevation: 0,
          height: tvMode ? 54 : isWeb ? 72 : isTablet ? 54 : 50,
          paddingBottom: tvMode ? 5 : isWeb ? 26 : isTablet ? 5 : 4,
          paddingTop: tvMode ? 4 : isTablet ? 4 : 3,
        },
        tabBarIconStyle: {
          width: "100%",
          height: tvMode ? 42 : isTablet ? 42 : 38,
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
  tvTabButton: {
    borderRadius: 11,
    marginHorizontal: 3,
    borderWidth: 1.5,
    borderColor: "transparent",
    backgroundColor: "transparent",
  },
  tvTabDpadFocused: {
    borderColor: "#38BDF8",
    backgroundColor: "rgba(56, 189, 248, 0.14)",
  },
  tabLabel: {
    fontSize: 8.5,
    fontFamily: "Cairo_600SemiBold",
    lineHeight: 10.5,
    includeFontPadding: false,
    textAlign: "center",
    width: "100%",
  },
  tvTabLabel: {
    fontSize: 10.5,
    lineHeight: 13.5,
  },
});
