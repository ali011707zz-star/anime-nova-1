import { Stack } from "expo-router";

export default function DubbedLayout() {
  return (
    <Stack screenOptions={{ headerShown: false, animation: "slide_from_left" }}>
      <Stack.Screen name="[id]" />
      <Stack.Screen name="watch" />
    </Stack>
  );
}
