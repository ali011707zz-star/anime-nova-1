import AsyncStorage from "@react-native-async-storage/async-storage";
import Constants from "expo-constants";
import * as Notifications from "expo-notifications";
import { Platform } from "react-native";
import { getBaseUrl } from "./baseUrl";
import { secureFetch } from "./secureApi";

export const PUSH_REGISTERED_KEY = "nova-push-token-registered-v1";
const PUSH_TOKEN_KEY = "nova-expo-push-token-v1";
const CHANNEL_ID = "nova-new-episodes";

function projectId(): string | undefined {
  return (
    Constants.expoConfig?.extra?.eas?.projectId ||
    (Constants as typeof Constants & { easConfig?: { projectId?: string } }).easConfig?.projectId
  );
}

/**
 * Registers this installation for server-side episode alerts.
 *
 * The server push is intentionally independent of the login session: episode
 * announcements are public, and this lets Android deliver them while the
 * JavaScript process is stopped or the app is not currently open.
 */
export async function registerPushNotifications(): Promise<boolean> {
  if (Platform.OS === "web") return false;

  try {
    Notifications.setNotificationHandler({
      handleNotification: async () => ({
        shouldShowBanner: true,
        shouldShowList: true,
        shouldPlaySound: true,
        shouldSetBadge: true,
      }),
    });

    if (Platform.OS === "android") {
      await Notifications.setNotificationChannelAsync(CHANNEL_ID, {
        name: "حلقات جديدة",
        importance: Notifications.AndroidImportance.HIGH,
        sound: "default",
        vibrationPattern: [0, 200, 100, 200],
        showBadge: true,
      });
    }

    const current = await Notifications.getPermissionsAsync();
    const permission = current.granted
      ? current
      : await Notifications.requestPermissionsAsync();
    if (!permission.granted) {
      console.warn(`[push] notifications permission denied status=${permission.status || "unknown"}`);
      return false;
    }

    const id = projectId();
    const tokenResponse = await Notifications.getExpoPushTokenAsync(
      id ? { projectId: id } : undefined,
    );
    const token = String(tokenResponse.data || "").trim();
    if (!token) {
      console.warn("[push] Expo returned an empty device token");
      return false;
    }

    const response = await secureFetch(`${getBaseUrl()}/api/push/register`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        token,
        platform: Platform.OS,
        appVersion: Constants.expoConfig?.version || "1.0.0",
      }),
    });
    if (!response.ok) {
      const detail = (await response.text().catch(() => "")).slice(0, 180);
      console.warn(`[push] server registration failed status=${response.status}${detail ? ` detail=${detail}` : ""}`);
      return false;
    }

    await AsyncStorage.multiSet([
      [PUSH_TOKEN_KEY, token],
      [PUSH_REGISTERED_KEY, "1"],
    ]);
    return true;
  } catch (error) {
    console.warn("[push] registration failed:", error instanceof Error ? error.message : String(error));
    return false;
  }
}