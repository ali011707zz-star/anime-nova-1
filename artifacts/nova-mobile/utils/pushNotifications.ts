import AsyncStorage from "@react-native-async-storage/async-storage";
import Constants from "expo-constants";
import * as Notifications from "expo-notifications";
import { Platform } from "react-native";
import { getBaseUrl } from "./baseUrl";
import { secureFetch } from "./secureApi";

const ENABLED_KEY = "nova-push-enabled-v1";
const TOKEN_KEY = "nova-expo-push-token-v1";
const REGISTERED_KEY = "nova-push-registered-v1";
const CHANNEL_ID = "nova-new-episodes";
const REQUEST_TIMEOUT_MS = 15_000;

export type PushNotificationsStatus = {
  enabled: boolean;
  registered: boolean;
};

function getExpoProjectId(): string | null {
  const value = Constants.expoConfig?.extra?.eas?.projectId;
  return typeof value === "string" && value.length > 0 ? value : null;
}

async function postPushRequest(
  action: "register" | "unregister",
  body: Record<string, unknown>,
): Promise<boolean> {
  const controller = new AbortController();
  const timeout = setTimeout(() => controller.abort(), REQUEST_TIMEOUT_MS);

  try {
    const response = await secureFetch(`${getBaseUrl()}/api/push/${action}`, {
      method: "POST",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
      body: JSON.stringify(body),
      signal: controller.signal,
    });
    return response.ok;
  } catch {
    return false;
  } finally {
    clearTimeout(timeout);
  }
}

async function ensureNotificationPermission(): Promise<boolean> {
  const current = await Notifications.getPermissionsAsync();
  const permission = current.granted
    ? current
    : await Notifications.requestPermissionsAsync();

  if (!permission.granted) return false;

  if (Platform.OS === "android") {
    await Notifications.setNotificationChannelAsync(CHANNEL_ID, {
      name: "حلقات جديدة",
      importance: Notifications.AndroidImportance.HIGH,
      sound: "default",
      vibrationPattern: [0, 200, 100, 200],
      showBadge: true,
    });
  }

  return true;
}

export async function getPushNotificationsStatus(): Promise<PushNotificationsStatus> {
  if (Platform.OS === "web") {
    return { enabled: false, registered: false };
  }

  try {
    const [enabledPreference, token, registration] = await Promise.all([
      AsyncStorage.getItem(ENABLED_KEY),
      AsyncStorage.getItem(TOKEN_KEY),
      AsyncStorage.getItem(REGISTERED_KEY),
    ]);
    const permission = await Notifications.getPermissionsAsync();

    return {
      enabled: permission.granted && enabledPreference === "true",
      registered: registration === "true" && Boolean(token),
    };
  } catch {
    return { enabled: false, registered: false };
  }
}

export async function setPushNotificationsEnabled(enabled: boolean): Promise<boolean> {
  if (Platform.OS === "web") return !enabled;

  if (!enabled) {
    try {
      await AsyncStorage.setItem(ENABLED_KEY, "false");
      const token = await AsyncStorage.getItem(TOKEN_KEY);
      if (!token) {
        await AsyncStorage.setItem(REGISTERED_KEY, "false");
        return true;
      }

      const unregistered = await postPushRequest("unregister", { token });
      if (unregistered) {
        await AsyncStorage.multiRemove([TOKEN_KEY, REGISTERED_KEY]);
      }
      return unregistered;
    } catch {
      return false;
    }
  }

  try {
    if (!(await ensureNotificationPermission())) {
      await AsyncStorage.setItem(ENABLED_KEY, "false");
      return false;
    }

    await AsyncStorage.setItem(ENABLED_KEY, "true");
    const projectId = getExpoProjectId();
    if (!projectId) {
      await AsyncStorage.setItem(REGISTERED_KEY, "false");
      return false;
    }

    const token = (await Notifications.getExpoPushTokenAsync({ projectId })).data;
    const previousToken = await AsyncStorage.getItem(TOKEN_KEY);
    await AsyncStorage.setItem(TOKEN_KEY, token);
    await AsyncStorage.setItem(REGISTERED_KEY, "false");

    const registered = await postPushRequest("register", {
      token,
      platform: Platform.OS === "ios" ? "ios" : "android",
      appVersion: Constants.expoConfig?.version ?? "unknown",
      ...(previousToken && previousToken !== token ? { previousToken } : {}),
    });

    if (registered) {
      await AsyncStorage.setItem(REGISTERED_KEY, "true");
    }
    return registered;
  } catch {
    return false;
  }
}
