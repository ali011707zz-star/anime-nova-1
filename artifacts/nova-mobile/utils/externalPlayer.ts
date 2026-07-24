import { Linking, Platform } from "react-native";

/**
 * Opens the video URL in NOVA Player (com.player.easy / EasyPlex) if installed.
 * Falls back to an implicit video/* intent so any installed player (VLC, MX Player…)
 * handles it instead of showing an error.
 *
 * Returns true if a player was opened, false only if no player is available at all.
 */
export async function openNovaPlayer(url: string): Promise<boolean> {
  if (!url || Platform.OS !== "android") return false;

  try {
    const parsed = new URL(url);
    const scheme = parsed.protocol.replace(":", "");
    const target = `${parsed.host}${parsed.pathname}${parsed.search}`;

    // 1️⃣ Try NOVA Player / EasyPlex explicitly
    const novaIntent =
      `intent://${target}` +
      `#Intent;scheme=${scheme};` +
      "action=android.intent.action.VIEW;" +
      "type=video/*;" +
      "package=com.player.easy;end";

    const novaSupported = await Linking.canOpenURL(novaIntent);
    if (novaSupported) {
      await Linking.openURL(novaIntent);
      return true;
    }
  } catch {
    /* NOVA Player not installed — fall through */
  }

  // 2️⃣ Fallback: implicit intent → system picks any installed video player
  try {
    const parsed = new URL(url);
    const scheme = parsed.protocol.replace(":", "");
    const target = `${parsed.host}${parsed.pathname}${parsed.search}`;

    const fallbackIntent =
      `intent://${target}` +
      `#Intent;scheme=${scheme};` +
      "action=android.intent.action.VIEW;" +
      "type=video/*;end";

    await Linking.openURL(fallbackIntent);
    return true;
  } catch {
    return false;
  }
}
