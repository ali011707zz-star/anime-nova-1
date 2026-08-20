import AsyncStorage from "@react-native-async-storage/async-storage";
import { Alert } from "react-native";
import { getBaseUrl } from "./baseUrl";
import { secureFetch } from "./secureApi";
import { showRewardedTestAd } from "./rewardedAd";

const DEVICE_KEY = "nova-ads-device-v1";
export const DOWNLOAD_LIMIT = 4;
export const WATCH_ACCESS_MS = 60 * 60 * 1000;
export type RewardKind = "download" | "watch";
export type AdState = {
  privileged: boolean;
  downloadCount: number;
  downloadLimit: number;
  downloadNeedsReward: boolean;
  watchAccessUntil: number | null;
  watchNeedsReward: boolean;
};

let deviceIdPromise: Promise<string> | null = null;
const listeners = new Set<(count: number) => void>();
let latestCount = 0;

async function getDeviceId(): Promise<string> {
  if (!deviceIdPromise) {
    deviceIdPromise = AsyncStorage.getItem(DEVICE_KEY).then(async (stored) => {
      if (stored) return stored;
      const id = `device-${Date.now().toString(36)}-${Math.random().toString(36).slice(2, 12)}`;
      await AsyncStorage.setItem(DEVICE_KEY, id).catch(() => {});
      return id;
    });
  }
  return deviceIdPromise;
}

async function adFetch(path: string, init: RequestInit = {}): Promise<Response> {
  const device = await getDeviceId();
  return secureFetch(`${getBaseUrl()}${path}`, {
    ...init,
    headers: { "Content-Type": "application/json", "X-Nova-Device": device, ...(init.headers || {}) },
  });
}

export async function getAdState(): Promise<AdState | null> {
  try {
    const response = await adFetch("/api/ads/state");
    if (!response.ok) return null;
    const state = await response.json() as AdState;
    latestCount = state.downloadCount;
    listeners.forEach((listener) => listener(latestCount));
    return state;
  } catch {
    return null;
  }
}

export function subscribeDownloadAdCount(listener: (count: number) => void): () => void {
  listeners.add(listener);
  listener(latestCount);
  void getAdState().then(() => listener(latestCount));
  return () => listeners.delete(listener);
}

export async function getDownloadAdCount(): Promise<number> {
  const state = await getAdState();
  return state?.downloadCount ?? latestCount;
}

async function completeReward(kind: RewardKind): Promise<boolean> {
  const started = await adFetch("/api/ads/reward/start", {
    method: "POST",
    body: JSON.stringify({ kind }),
  });
  if (!started.ok) return false;
  const challenge = await started.json() as { bypass?: boolean; token?: string };
  if (challenge.bypass) return true;
  if (!challenge.token) return false;

  const earned = await showRewardedTestAd();
  if (!earned) return false;

  const completed = await adFetch("/api/ads/reward/complete", {
    method: "POST",
    body: JSON.stringify({ token: challenge.token }),
  });
  if (!completed.ok) return false;
  const state = await completed.json() as AdState;
  latestCount = state.downloadCount;
  listeners.forEach((listener) => listener(latestCount));
  return true;
}

export async function ensureDownloadAllowed(): Promise<boolean> {
  try {
    const response = await adFetch("/api/ads/download-start", { method: "POST", body: "{}" });
    if (response.ok) return true;
    const body = await response.clone().json().catch(() => ({}));
    if (!body.needsReward) return false;
    return new Promise((resolve) => {
      Alert.alert("متابعة التنزيل", "شاهد إعلانًا قصيرًا لمتابعة تنزيل الحلقات", [
        { text: "إلغاء", style: "cancel", onPress: () => resolve(false) },
        {
          text: "مشاهدة الإعلان",
          onPress: () => { void completeReward("download").then(resolve); },
        },
      ], { cancelable: true, onDismiss: () => resolve(false) });
    });
  } catch {
    return false;
  }
}

/** Called only after DownloadResumable saved a non-empty completed file. */
export async function recordSuccessfulDownload(animeId: number, ep: number): Promise<number> {
  try {
    const response = await adFetch("/api/ads/download-complete", {
      method: "POST",
      body: JSON.stringify({ animeId, ep }),
    });
    if (response.ok) {
      const state = await response.json() as AdState;
      latestCount = state.downloadCount;
      listeners.forEach((listener) => listener(latestCount));
    }
  } catch {}
  return latestCount;
}

export async function ensureWatchAccess(): Promise<boolean> {
  try {
    const response = await adFetch("/api/ads/watch-start", { method: "POST", body: "{}" });
    if (response.ok) return true;
    const body = await response.clone().json().catch(() => ({}));
    if (!body.needsReward) return false;
    return new Promise((resolve) => {
      Alert.alert(
        "فتح السيرفرات",
        "شاهد إعلانًا قصيرًا لفتح السيرفرات ومشاهدة الحلقة لمدة 60 دقيقة",
        [
          { text: "إلغاء", style: "cancel", onPress: () => resolve(false) },
          {
            text: "مشاهدة الإعلان",
            onPress: () => { void completeReward("watch").then(resolve); },
          },
        ],
        { cancelable: true, onDismiss: () => resolve(false) },
      );
    });
  } catch {
    return false;
  }
}

export async function resetDownloadAdCount(): Promise<void> {
  /* Kept for compatibility with older callers. The server is authoritative. */
  latestCount = 0;
  listeners.forEach((listener) => listener(0));
}

export async function hasWatchAccess(): Promise<boolean> {
  const state = await getAdState();
  return !!state && (state.privileged || !state.watchNeedsReward);
}

export async function grantWatchAccess(): Promise<number> {
  const state = await getAdState();
  return state?.watchAccessUntil ?? Date.now() + WATCH_ACCESS_MS;
}