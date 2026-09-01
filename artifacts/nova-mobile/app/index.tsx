import { Redirect } from "expo-router";
import { isTvDevice } from "@/utils/tv";

export default function RootIndex() {
  /*
   * Some TV boxes omit Platform.isTV even though they expose a TV-sized
   * landscape window. Use the shared detector so those devices reach the
   * six-digit code field instead of the phone login screen.
   */
  return <Redirect href={(isTvDevice() ? "/tv-link" : "/(tabs)") as any} />;
}
