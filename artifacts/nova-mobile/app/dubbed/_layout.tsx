import { Stack } from "expo-router";
import { Platform } from "react-native";

export default function DubbedLayout() {
  return (
    <Stack screenOptions={{
      headerShown: false,
      animation: Platform.OS === "android" ? "none" : "fade",
      animationDuration: 140,
    }}>
      <Stack.Screen name="[id]" />
      <Stack.Screen name="watch" />
    </Stack>
  );
}
