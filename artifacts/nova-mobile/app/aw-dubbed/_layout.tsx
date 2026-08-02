import { Stack } from "expo-router";

export default function AwDubbedLayout() {
  return (
    <Stack screenOptions={{ headerShown: false }}>
      <Stack.Screen name="[key]" options={{ animation: "slide_from_bottom" }} />
      <Stack.Screen name="watch"  options={{ orientation: "all" }} />
    </Stack>
  );
}
