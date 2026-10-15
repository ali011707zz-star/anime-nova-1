import { Stack } from "expo-router";

export default function DubbedLayout() {
  return (
    <Stack screenOptions={{ headerShown: false, animation: "fade", animationDuration: 140 }}>
      <Stack.Screen name="[id]" />
      <Stack.Screen name="watch" />
    </Stack>
  );
}
