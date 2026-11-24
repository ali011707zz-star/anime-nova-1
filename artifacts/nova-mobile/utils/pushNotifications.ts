import AsyncStorage from "@react-native-async-storage/async-storage";
import Constants from "expo-constants";
import * as Notifications from "expo-notifications";
import { Platform } from "react-native";
import { getBaseUrl } from "./baseUrl";
import { secureFetch } from "./secureApi";
import {
  buildPushSyncSignature,
  shouldProcessPushTokenEvent,
  shouldRefreshFcmToken,
  shouldSkipDuplicatePushRegister,
} from "./pushTokenPolicy.mjs";

export const PUSH_REGISTERED_KEY = "nova-push-token-registered-v1";
export const PUSH_ENABLED_KEY = "nova-push-notifications-enabled-v1";
const PUSH_TOKEN_KEY = "nova-expo-push-token-v1";
const FCM_TOKEN_CHECKED_AT_KEY = "nova-fcm-token-checked-at-v1";
export const PUSH_CHANNEL_ID = "nova-alerts-v2";
const CHANNEL_ID = PUSH_CHANNEL_ID;

let registrationInFlight: Promise<boolean> | null = null;
let registrationAgain = false;
let forceTokenRefreshAgain = false;
let tokenListener: { remove: () => void } | null = null;

// Session-level loop & dedupe guards (prevents the Android getDevicePushTokenAsync ->
// addPushTokenListener infinite feedback loop while keeping token rotation self-healing).
let hasVerifiedNativeTokenThisSession = false;
let lastKnownToken: string | null = null;
let lastSyncedSignature: string | null = null;
let lastSyncedAt = 0;
let lastTokenEventAt = 0;

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
        name: "تنبيهات الحلقات الجديدة",
        importance: Notifications.AndroidImportance.MAX,
        lockscreenVisibility: Notifications.AndroidNotificationVisibility.PUBLIC,
        enableVibrate: true,
        enableLights: true,
        lightColor: "#8B5CF6",
        sound: "default",
        vibrationPattern: [0, 250, 120, 250],
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

    const previousToken = (await AsyncStorage.getItem(PUSH_TOKEN_KEY))?.trim() || null;
    if (previousToken && !lastKnownToken) {
      lastKnownToken = previousToken;
    }
    const checkedAt = Number(await AsyncStorage.getItem(FCM_TOKEN_CHECKED_AT_KEY) || 0);

    // Verify the live native FCM token at most once per app launch (or on explicit
    // forceTokenRefresh / weekly boundary) instead of on every foreground focus,
    // preventing Android's getDevicePushTokenAsync -> addPushTokenListener loop.
    const shouldFetchNow = useDirectFcm
      ? (!hasVerifiedNativeTokenThisSession || shouldRefreshFcmToken(previousToken, checkedAt, Date.now(), forceTokenRefresh))
      : shouldRefreshFcmToken(previousToken, checkedAt, Date.now(), forceTokenRefresh);

    let token = !shouldFetchNow ? previousToken || undefined : undefined;
    let fetchedDeviceToken = false;
    if (token) {
      console.info("[push] reusing recently checked push token");
    } else {
      for (let attempt = 1; attempt <= 3; attempt += 1) {
        try {
          const tokenResponse = useDirectFcm
            ? await Notifications.getDevicePushTokenAsync()
            : await Notifications.getExpoPushTokenAsync({ projectId: id! });
          token = String(tokenResponse.data || "").trim();
          fetchedDeviceToken = Boolean(token && useDirectFcm);
          if (token && useDirectFcm) {
            hasVerifiedNativeTokenThisSession = true;
            lastKnownToken = token;
          }
          break;
        } catch (error) {
          console.warn(`[push] ${useDirectFcm ? "FCM" : "Expo"} token request failed attempt=${attempt}/3:`, error instanceof Error ? error.message : String(error));
          if (attempt < 3) await wait(500 * 2 ** (attempt - 1));
        }
      }
    }

    if (!token && useDirectFcm && previousToken) {
      token = previousToken;
      await AsyncStorage.setItem(FCM_TOKEN_CHECKED_AT_KEY, String(Date.now())).catch(() => {});
      console.warn("[push] using the last known FCM token after refresh failed");
    }

    if (!token) {
      console.warn(`[push] ${useDirectFcm ? "FCM" : "Expo"} returned an empty device token`);
      await AsyncStorage.setItem(PUSH_REGISTERED_KEY, "0").catch(() => {});
      return false;
    }

    lastKnownToken = token;
    if (fetchedDeviceToken) {
      await AsyncStorage.multiSet([
        [PUSH_TOKEN_KEY, token],
        [FCM_TOKEN_CHECKED_AT_KEY, String(Date.now())],
      ]).catch((error) => {
        console.warn("[push] could not persist refreshed FCM token metadata:", error instanceof Error ? error.message : String(error));
      });
    }

    let storedUserId: string | undefined;
    try {
      const rawUser = await AsyncStorage.getItem("nova-mobile-user");
      if (rawUser) {
        const parsedUser = JSON.parse(rawUser);
        if (parsedUser?.id) storedUserId = String(parsedUser.id).trim();
      }
    } catch { /* ignore */ }

    const tokenChanged = Boolean(previousToken && previousToken !== token);
    if (
      !tokenChanged &&
      shouldSkipDuplicatePushRegister(
        token,
        storedUserId,
        lastSyncedSignature,
        lastSyncedAt,
        Date.now(),
        undefined,
        forceTokenRefresh,
      )
    ) {
      return true;
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
            ...(tokenChanged && previousToken ? { previousToken } : {}),
            ...(storedUserId ? { userId: storedUserId } : {}),
            platform: Platform.OS,
            channelId: CHANNEL_ID,
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

    lastSyncedSignature = buildPushSyncSignature(token, storedUserId);
    lastSyncedAt = Date.now();
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
    // Only queue a follow-up pass when explicitly forced (e.g., genuine token rotation).
    if (options.forceTokenRefresh) {
      registrationAgain = true;
      forceTokenRefreshAgain = true;
    }
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
  lastKnownToken = null;
  lastSyncedSignature = null;
  lastSyncedAt = 0;
  hasVerifiedNativeTokenThisSession = false;
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

  const registered = await registerPushNotifications({ forceTokenRefresh: true });
  if (!registered) {
    await AsyncStorage.setItem(PUSH_ENABLED_KEY, "0");
    await AsyncStorage.setItem(PUSH_REGISTERED_KEY, "0").catch(() => {});
  }
  return registered;
}

/**
 * The native token listener covers FCM/APNs. Refresh the platform's registered
 * token through the same registration path ONLY when the native token genuinely rolls.
 */
export async function getCachedPushToken(): Promise<string | null> {
  if (Platform.OS === "web") return null;
  try {
    const token = await AsyncStorage.getItem(PUSH_TOKEN_KEY);
    return token && token.trim().length >= 20 ? token.trim() : null;
  } catch {
    return null;
  }
}

export async function getActivePushToken(options: { requestPermission?: boolean } = {}): Promise<{
  token: string | null;
  permissionDenied?: boolean;
}> {
  if (Platform.OS === "web") return { token: null };
  try {
    const current = await Notifications.getPermissionsAsync();
    const permission = current.granted
      ? current
      : options.requestPermission
        ? await Notifications.requestPermissionsAsync()
        : current;
    if (!permission.granted) {
      return { token: null, permissionDenied: true };
    }
    if (options.requestPermission) {
      await AsyncStorage.setItem(PUSH_ENABLED_KEY, "1").catch(() => {});
    }
    const existingCached = await getCachedPushToken();
    await registerPushNotifications({ forceTokenRefresh: !existingCached }).catch(() => false);
    const cached = await getCachedPushToken();
    if (cached) return { token: cached };
    if (Platform.OS === "android") {
      const resp = await Notifications.getDevicePushTokenAsync().catch(() => null);
      const raw = String(resp?.data || "").trim();
      if (raw.length >= 20) {
        lastKnownToken = raw;
        await AsyncStorage.setItem(PUSH_TOKEN_KEY, raw).catch(() => {});
        return { token: raw };
      }
    }
    return { token: null };
  } catch {
    return { token: await getCachedPushToken() };
  }
}

export function subscribeToPushTokenChanges(): () => void {
  if (Platform.OS === "web") return () => {};
  tokenListener?.remove();
  tokenListener = Notifications.addPushTokenListener((event) => {
    const incoming = typeof event?.data === "string" ? event.data.trim() : "";
    void (async () => {
      const known = lastKnownToken || (await AsyncStorage.getItem(PUSH_TOKEN_KEY))?.trim() || null;
      const now = Date.now();
      if (!shouldProcessPushTokenEvent(incoming, known, lastTokenEventAt, now)) {
        return;
      }
      lastTokenEventAt = now;
      lastKnownToken = incoming;
      console.info("[push] native device token changed; refreshing push registration");
      void registerPushNotifications({ forceTokenRefresh: true });
    })();
  });
  return () => {
    tokenListener?.remove();
    tokenListener = null;
  };
}

export async function sendDelayedTestPush(delaySeconds = 10): Promise<{
  ok: boolean;
  scheduledInSeconds?: number;
  error?: string;
}> {
  if (Platform.OS === "web") return { ok: false, error: "غير مدعوم على الويب" };
  try {
    const active = await getActivePushToken({ requestPermission: true });
    if (active.permissionDenied) {
      return { ok: false, error: "يرجى السماح بإذن الإشعارات للتطبيق من إعدادات الهاتف أولاً" };
    }
    if (!active.token) {
      return { ok: false, error: "تعذر الحصول على رمز الإشعارات من الجهاز — أعد المحاولة" };
    }
    const res = await secureFetch(`${getBaseUrl()}/api/push/test-delayed`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        token: active.token,
        delaySeconds,
        channelId: CHANNEL_ID,
      }),
    });
    const data = await res.json().catch(() => null) as { ok?: boolean; scheduledInSeconds?: number; error?: string } | null;
    if (!res.ok || !data?.ok) {
      return { ok: false, error: data?.error || "تعذر إرسال الإشعار التجريبي الآن" };
    }
    return { ok: true, scheduledInSeconds: data.scheduledInSeconds ?? delaySeconds };
  } catch {
    return { ok: false, error: "تعذر الاتصال بالخادم — تحقق من الإنترنت" };
  }
}
