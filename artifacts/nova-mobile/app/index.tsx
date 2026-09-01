import { Redirect } from "expo-router";
import { Platform } from "react-native";

export default function RootIndex() {
  return <Redirect href={(Platform.isTV ? "/tv-link" : "/(tabs)") as any} />;
}
