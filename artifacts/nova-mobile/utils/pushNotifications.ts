import AsyncStorage from "@react-native-async-storage/async-storage";
import Constants from "expo-constants";
import * as Notifications from "expo-notifications";
import { Platform } from "react-native";
import { getBaseUrl } from "./baseUrl";
import { secureFetch } from "./secureApi";
import { shouldRefreshFcmToken } from "./pushTokenPolicy.mjs";

export const PUSH_REGISTERED_KEY = "nova-push-token-registered-v1";
export const PUSH_ENABLED_KEY = "nova-push-notifications-enabled-v1";
const PUSH_TOKEN_KEY = "nova-expo-push-token-v1";
const FCM_TOKEN_CHECKED_AT_KEY = "nova-fcm-token-checked-at-v1";
const CHANNEL_ID = "nova-new-episodes";
let registrationInFlight: Promise<boolean> | null = null;
let registrationAgain = false;
let forceTokenRefreshAgain = false;
let tokenListener: { remove: () => void } | null = null;

const wait = (ms: number) => new Promise((resolve) => setTimeout(resolve, ms));

export async function arePushNotificationsEnabled(): Promise<boolean> {
  return (await AsyncStorage.getItem(PUSH_ENABLED_KEY)) !== "0";
}

export async function getPushNotificationsStatus(): Promise<{
  enabled: boolean;
  registered: boolean;
}> {
  const [enabled, registered] = await Promise.all([
    arePushNotificationsEnabled(),
    AsyncStorage.getItem(PUSH_REGISTERED_KEY),
  ]);
  return { enabled, registered: enabled && registered === "1" };
}

function projectId(): string | undefined {
  return (
    Constants.expoConfig?.extra?.eas?.projectId ||
    (Constants as typeof Constants & { easConfig?: { projectId?: string } }).easConfig?.projectId
  );
}

async function registerPushNotificationsOnce(forceTokenRefresh = false): Promise<boolean> {
  let phase = "permission";
  try {
    if (!(await arePushNotificationsEnabled())) {
      await AsyncStorage.setItem(PUSH_REGISTERED_KEY, "0").catch(() => {});
      return false;
    }

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

    const useDirectFcm = Platform.OS === "android";
    phase = useDirectFcm ? "native FCM token" : "Expo token";
    const id = useDirectFcm ? undefined : projectId();
    if (!useDirectFcm && !id) {
      console.error("[push] Expo projectId is missing; cannot create an iOS project-scoped push token");
      await AsyncStorage.setItem(PUSH_REGISTERED_KEY, "0").catch(() => {});
      return false;
    }
    const previousToken = await AsyncStorage.getItem(PUSH_TOKEN_KEY);
    const checkedAt = Number(await AsyncStorage.getItem(FCM_TOKEN_CHECKED_AT_KEY) || 0);
    let token = useDirectFcm && !shouldRefreshFcmToken(previousToken, checkedAt, Date.now(), forceTokenRefresh)
      ? previousToken || undefined
      : undefined;
    let fetchedDeviceToken = false;

    if (token) {
      console.info("[push] reusing recently checked native FCM token");
    } else {
      for (let attempt = 1; attempt <= 3; attempt += 1) {
        try {
          const tokenResponse = useDirectFcm
            ? await Notifications.getDevicePushTokenAsync()
            : await Notifications.getExpoPushTokenAsync({ projectId: id! });
          token = String(tokenResponse.data || "").trim();
          fetchedDeviceToken = Boolean(token && useDirectFcm);
          break;
        } catch (error) {
          console.warn(`[push] ${useDirectFcm ? "FCM" : "Expo"} token request failed attempt=${attempt}/3:`, error instanceof Error ? error.message : String(error));
          if (attempt < 3) await wait(500 * 2 ** (attempt - 1));
        }
      }
    }

    if (!token && useDirectFcm && previousToken) {
      // Keep notifications registered with the last known-good FCM token if
      // a scheduled refresh fails temporarily; retry the refresh next week.
      token = previousToken;
      await AsyncStorage.setItem(FCM_TOKEN_CHECKED_AT_KEY, String(Date.now())).catch(() => {});
      console.warn("[push] using the last known FCM token after refresh failed");
    }
    if (!token) {
      console.warn(`[push] ${useDirectFcm ? "FCM" : "Expo"} returned an empty device token`);
      await AsyncStorage.setItem(PUSH_REGISTERED_KEY, "0").catch(() => {});
      return false;
    }

    if (fetchedDeviceToken) {
      await AsyncStorage.multiSet([
        [PUSH_TOKEN_KEY, token],
        [FCM_TOKEN_CHECKED_AT_KEY, String(Date.now())],
      ]).catch((error) => {
        console.warn("[push] could not persist refreshed FCM token metadata:", error instanceof Error ? error.message : String(error));
      });
    }
    console.info(useDirectFcm ? "[push] native FCM token obtained" : `[push] Expo token obtained projectId=${id}`);

    phase = "Token Registration";
    let response: Response | undefined;
    for (let attempt = 1; attempt <= 3; attempt += 1) {
      try {
        response = await secureFetch(`${getBaseUrl()}/api/push/register`, {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            token,
            ...(previousToken && previousToken !== token ? { previousToken } : {}),
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
export async function registerPushNotifications(options: { forceTokenRefresh?: boolean } = {}): Promise<boolean> {
  if (Platform.OS === "web") return false;
  if (!(await arePushNotificationsEnabled())) return false;
  if (registrationInFlight) {
    registrationAgain = true;
    if (options.forceTokenRefresh) forceTokenRefreshAgain = true;
    return registrationInFlight;
  }

  registrationInFlight = registerPushNotificationsOnce(options.forceTokenRefresh === true);
  try {
    return await registrationInFlight;
  } finally {
    registrationInFlight = null;
    if (registrationAgain) {
      const forceTokenRefresh = forceTokenRefreshAgain;
      registrationAgain = false;
      forceTokenRefreshAgain = false;
      void registerPushNotifications({ forceTokenRefresh });
    } else {
      forceTokenRefreshAgain = false;
    }
  }
}

export async function unregisterPushNotifications(): Promise<boolean> {
  if (registrationInFlight) {
    await registrationInFlight.catch(() => false);
  }

  const token = await AsyncStorage.getItem(PUSH_TOKEN_KEY);
  await AsyncStorage.setItem(PUSH_REGISTERED_KEY, "0").catch(() => {});
  if (!token) {
    await AsyncStorage.removeItem(FCM_TOKEN_CHECKED_AT_KEY).catch(() => {});
    return true;
  }

  for (let attempt = 1; attempt <= 3; attempt += 1) {
    try {
      const response = await secureFetch(`${getBaseUrl()}/api/push/unregister`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ token }),
      });
      if (response.ok) {
        await AsyncStorage.multiRemove([PUSH_TOKEN_KEY, FCM_TOKEN_CHECKED_AT_KEY]);
        return true;
      }
      if (response.status < 500 && response.status !== 429) break;
      console.warn(`[push] token unregistration transient response status=${response.status} attempt=${attempt}/3`);
    } catch (error) {
      console.warn(`[push] token unregistration failed attempt=${attempt}/3:`, error instanceof Error ? error.message : String(error));
    }
    if (attempt < 3) await wait(500 * 2 ** (attempt - 1));
  }
  return false;
}

export async function setPushNotificationsEnabled(enabled: boolean): Promise<boolean> {
  await AsyncStorage.setItem(PUSH_ENABLED_KEY, enabled ? "1" : "0");
  if (!enabled) return unregisterPushNotifications();

  const registered = await registerPushNotifications();
  if (!registered) {
    await AsyncStorage.setItem(PUSH_ENABLED_KEY, "0");
    await AsyncStorage.setItem(PUSH_REGISTERED_KEY, "0").catch(() => {});
  }
  return registered;
}

/**
 * The native token listener covers FCM/APNs. Refresh the platform's registered
 * token through the same registration path when the native token rolls.
 */
export function subscribeToPushTokenChanges(): () => void {
  if (Platform.OS === "web") return () => {};
  tokenListener?.remove();
  tokenListener = Notifications.addPushTokenListener(() => {
    console.info("[push] native device token changed; refreshing push registration");
    void registerPushNotifications({ forceTokenRefresh: true });
  });
  return () => {
    tokenListener?.remove();
    tokenListener = null;
  };
}