import { Platform } from "react-native";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "./baseUrl";
import { secureFetch } from "./secureApi";
import {
  initializeRewardedAds,
  showRewardedAd as showLevelPlayRewardedAd,
} from "./rewardedAd";

let deviceIdPromise: Promise<string> | null = null;

async function getDeviceId(): Promise<string> {
  if (!deviceIdPromise) {
    deviceIdPromise = AsyncStorage.getItem("nova-rewarded-device-id").then(async (saved) => {
      if (saved) return saved;
      const created = `nova-${Platform.OS}-${Date.now().toString(36)}-${Math.random().toString(36).slice(2, 12)}`;
      await AsyncStorage.setItem("nova-rewarded-device-id", created);
      return created;
    });
  }
  return deviceIdPromise;
}

export async function adsFetch(path: string, init: RequestInit = {}): Promise<Response> {
  const device = await getDeviceId();
  return secureFetch(`${getBaseUrl()}${path}`, {
    ...init,
    headers: {
      "Content-Type": "application/json",
      "X-Nova-Device": device,
      ...(init.headers || {}),
    },
  });
}

export async function recordCompletedDownload(
  animeId: number,
  ep: number,
): Promise<{ downloadAdRequired: boolean }> {
  const response = await adsFetch("/api/ads/download/completed", {
    method: "POST",
    body: JSON.stringify({ animeId, ep, episodeKey: `${animeId}:e${ep}` }),
  });
  if (!response.ok) return { downloadAdRequired: false };
  return response.json();
}

export async function rewardDownloadAd(challenge: string): Promise<boolean> {
  const response = await adsFetch("/api/ads/reward/complete", {
    method: "POST",
    body: JSON.stringify({ token: challenge }),
  });
  return response.ok;
}

export async function getAdStatus(): Promise<unknown> {
  const response = await adsFetch("/api/ads/state");
  return response.ok ? response.json() : null;
}

export async function rewardWatchAd(challenge: string): Promise<boolean> {
  const response = await adsFetch("/api/ads/reward/complete", {
    method: "POST",
    body: JSON.stringify({ token: challenge }),
  });
  return response.ok;
}

export async function startRewardAd(kind: "watch" | "download"): Promise<string | null> {
  const response = await adsFetch("/api/ads/reward/start", {
    method: "POST",
    body: JSON.stringify({ kind }),
  });
  if (!response.ok) return null;
  const data = await response.json() as { bypass?: boolean; token?: string };
  return data.bypass ? "bypass" : (typeof data.token === "string" ? data.token : null);
}

/** Shows the active LevelPlay rewarded video; it never completes a server challenge by itself. */
export async function showRewardedAd(): Promise<boolean> {
  await initializeRewardedAds();
  return showLevelPlayRewardedAd();
}