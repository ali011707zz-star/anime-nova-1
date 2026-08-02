import { Stack } from "expo-router";

export default function AwDubbedLayout() {
  return (
    <Stack screenOptions={{ headerShown: false, animation: "slide_from_left" }}>
      <Stack.Screen name="[key]" />
      <Stack.Screen name="watch" />
    </Stack>
  );
}
