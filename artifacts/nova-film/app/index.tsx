import { Redirect } from "expo-router";

export default function RootIndex() {
  // TV starts on the same home surface as mobile. Device linking remains
  // available from inside the app instead of interrupting first launch.
  return <Redirect href="/(tabs)" />;
}
