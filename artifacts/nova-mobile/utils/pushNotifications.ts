import AsyncStorage from "@react-native-async-storage/async-storage";
import Constants from "expo-constants";
import * as Notifications from "expo-notifications";
import { Platform } from "react-native";
import { getBaseUrl } from "./baseUrl";
import { secureFetch } from "./secureApi";

export const PUSH_REGISTERED_KEY = "nova-push-token-registered-v1";
const PUSH_TOKEN_KEY = "nova-expo-push-token-v1";
const CHANNEL_ID = "nova-new-episodes";
let registrationInFlight: Promise<boolean> | null = null;
let registrationAgain = false;
let tokenListener: { remove: () => void } | null = null;

const wait = (ms: number) => new Promise((resolve) => setTimeout(resolve, ms));

function projectId(): string | undefined {
  return (
    Constants.expoConfig?.extra?.eas?.projectId ||
    (Constants as typeof Constants & { easConfig?: { projectId?: string } }).easConfig?.projectId
  );
}

async function registerPushNotificationsOnce(): Promise<boolean> {
  let phase = "permission";
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
      await AsyncStorage.setItem(PUSH_REGISTERED_KEY, "0").catch(() => {});
      return false;
    }
    console.info(`[push] permission granted status=${permission.status || "unknown"}`);

    phase = "Expo token";
    const id = projectId();
    if (!id) {
      console.error("[push] Expo projectId is missing; cannot create a project-scoped push token");
      await AsyncStorage.setItem(PUSH_REGISTERED_KEY, "0").catch(() => {});
      return false;
    }
    let token: string | undefined;
    for (let attempt = 1; attempt <= 3; attempt += 1) {
      try {
        const tokenResponse = await Notifications.getExpoPushTokenAsync({ projectId: id });
        token = String(tokenResponse.data || "").trim();
        break;
      } catch (error) {
        console.warn(`[push] Expo token request failed attempt=${attempt}/3:`, error instanceof Error ? error.message : String(error));
        if (attempt < 3) await wait(500 * 2 ** (attempt - 1));
      }
    }
    if (!token) {
      console.warn("[push] Expo returned an empty device token");
      await AsyncStorage.setItem(PUSH_REGISTERED_KEY, "0").catch(() => {});
      return false;
    }
    console.info(`[push] Expo token obtained projectId=${id}`);

    phase = "Token Registration";
    let response: Response | undefined;
    for (let attempt = 1; attempt <= 3; attempt += 1) {
      try {
        response = await secureFetch(`${getBaseUrl()}/api/push/register`, {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            token,
            platform: Platform.OS,
            appVersion: Constants.expoConfig?.version || "1.0.0",
          }),
        });
        if (response.ok || (response.status < 500 && response.status !== 429)) break;
        console.warn(`[push] token registration transient response status=${response.status} attempt=${attempt}/3`);
      } catch (error) {
        console.warn(`[push] token registration request failed attempt=${attempt}/3:`, error instanceof Error ? error.message : String(error));
      }
      if (attempt < 3) await wait(500 * 2 ** (attempt - 1));
    }
    if (!response?.ok) {
      const detail = response ? (await response.text().catch(() => "")).slice(0, 180) : "";
      console.warn(`[push] server registration failed${response ? ` status=${response.status}` : ""}${detail ? ` detail=${detail}` : ""}`);
      await AsyncStorage.setItem(PUSH_REGISTERED_KEY, "0").catch(() => {});
      return false;
    }

    await AsyncStorage.multiSet([
      [PUSH_TOKEN_KEY, token],
      [PUSH_REGISTERED_KEY, "1"],
    ]);
    console.info(`[push] token registration succeeded platform=${Platform.OS}`);
    return true;
  } catch (error) {
    console.warn(`[push] ${phase} failed:`, error instanceof Error ? error.message : String(error));
    await AsyncStorage.setItem(PUSH_REGISTERED_KEY, "0").catch(() => {});
    return false;
  }
}

/**
 * Registers this installation for server-side episode alerts. This does not
 * depend on login; re-registering on startup also refreshes account ownership.
 */
export async function registerPushNotifications(): Promise<boolean> {
  if (Platform.OS === "web") return false;
  if (registrationInFlight) {
    registrationAgain = true;
    return registrationInFlight;
  }

  registrationInFlight = registerPushNotificationsOnce();
  try {
    return await registrationInFlight;
  } finally {
    registrationInFlight = null;
    if (registrationAgain) {
      registrationAgain = false;
      void registerPushNotifications();
    }
  }
}

/**
 * Expo's listener reports a native FCM/APNs token, not an Expo Push Token.
 * Refresh the project-scoped Expo token through getExpoPushTokenAsync before
 * posting to the existing server endpoint.
 */
export function subscribeToPushTokenChanges(): () => void {
  if (Platform.OS === "web") return () => {};
  tokenListener?.remove();
  tokenListener = Notifications.addPushTokenListener(() => {
    console.info("[push] native device token changed; refreshing Expo token");
    void registerPushNotifications();
  });
  return () => {
    tokenListener?.remove();
    tokenListener = null;
  };
}