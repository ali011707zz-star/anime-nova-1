import { Linking, Platform, Alert } from "react-native";

const NOVA_PLAYER_PKG = "com.player.easy";
const NOVA_PLAYER_URL = "https://animenovaa.duckdns.org/nova-player.apk";

/**
 * Opens the video URL in NOVA Player (com.player.easy).
 * If not installed → shows an alert with a download link and returns false.
 * Never falls back to another player.
 */
export async function openNovaPlayer(url: string): Promise<boolean> {
  if (!url || Platform.OS !== "android") return false;

  try {
    const parsed = new URL(url);
    const scheme = parsed.protocol.replace(":", "");
    const target = `${parsed.host}${parsed.pathname}${parsed.search}`;

    const intentUrl =
      `intent://${target}` +
      `#Intent;scheme=${scheme};` +
      "action=android.intent.action.VIEW;" +
      "type=video/*;" +
      `package=${NOVA_PLAYER_PKG};end`;

    const supported = await Linking.canOpenURL(intentUrl);
    if (supported) {
      await Linking.openURL(intentUrl);
      return true;
    }
  } catch {
    /* fall through to alert */
  }

  // NOVA Player not installed → alert only
  Alert.alert(
    "NOVA Player غير مثبَّت",
    "هذا المصدر يتطلب مشغل NOVA Player.\nاضغط تنزيل لتثبيته ثم أعد المحاولة.",
    [
      {
        text: "تنزيل",
        onPress: () => Linking.openURL(NOVA_PLAYER_URL).catch(() => {}),
      },
      { text: "إلغاء", style: "cancel" },
    ]
  );
  return false;
}
