import { Linking, Platform } from "react-native";

/**
 * Opens the rebranded external player with an explicit Android package.
 * The explicit package keeps a missing-player installation from silently
 * sending the user to a browser page instead of back to NOVA.
 */
export async function openNovaPlayer(url: string): Promise<boolean> {
  if (!url) return false;

  if (Platform.OS === "android") {
    try {
      const parsed = new URL(url);
      const target = `${parsed.host}${parsed.pathname}${parsed.search}`;
      const intentUrl =
        `intent://${target}` +
        `#Intent;scheme=${parsed.protocol.replace(":", "")};` +
        "action=android.intent.action.VIEW;" +
        "type=video/*;" +
        "package=com.player.easy;end";
      await Linking.openURL(intentUrl);
      return true;
    } catch {
      return false;
    }
  }

  return false;
}