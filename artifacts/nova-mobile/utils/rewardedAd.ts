import { Platform } from "react-native";
import {
  AdEventType,
  RewardedAd,
  RewardedAdEventType,
} from "react-native-google-mobile-ads";

// Live Android rewarded unit. The server can also update this value remotely
// through /api/ads/state after the app refreshes its ad settings.
const TEST_REWARDED_ID = "ca-app-pub-7738594986393012/4388351429";
const configuredRewardedId = process.env.EXPO_PUBLIC_ADMOB_REWARDED_AD_UNIT_ID?.trim();

/** Keep a valid live fallback when the remote ad setting is unavailable. */
export const NOVA_ADS_TEST_MODE = !configuredRewardedId;
let rewardedAdUnitId = configuredRewardedId || TEST_REWARDED_ID;
const AD_LOAD_TIMEOUT_MS = 20_000;

export function showRewardedAd(): Promise<boolean> {
  if (Platform.OS === "web") return Promise.resolve(false);

  return new Promise((resolve) => {
    let rewarded = false;
    let settled = false;
    let timeout: ReturnType<typeof setTimeout> | undefined;
    let subscriptions: Array<() => void> = [];
    const cleanup = () => {
      if (timeout) clearTimeout(timeout);
      subscriptions.forEach((unsubscribe) => unsubscribe());
    };
    const finish = (value: boolean) => {
      if (settled) return;
      settled = true;
      cleanup();
      resolve(value);
    };
    try {
      const ad = RewardedAd.createForAdRequest(rewardedAdUnitId, {
        requestNonPersonalizedAdsOnly: true,
      });
      subscriptions = [
        ad.addAdEventListener(RewardedAdEventType.LOADED, () => {
          ad.show().catch((error) => {
            console.warn("[rewarded-ad] show failed", error);
            finish(false);
          });
        }),
        ad.addAdEventListener(RewardedAdEventType.EARNED_REWARD, () => {
          rewarded = true;
        }),
        ad.addAdEventListener(AdEventType.ERROR, (error) => {
          console.warn("[rewarded-ad] load failed", error);
          finish(false);
        }),
        ad.addAdEventListener(AdEventType.CLOSED, () => finish(rewarded)),
      ];
      timeout = setTimeout(() => finish(false), AD_LOAD_TIMEOUT_MS);
      ad.load();
    } catch (error) {
      console.warn("[rewarded-ad] create failed", error);
      finish(false);
    }
  });
}

export function setRewardedAdUnitId(adUnitId: string | null | undefined): void {
  const value = adUnitId?.trim();
  if (value) rewardedAdUnitId = value;
}

/** Backward-compatible name for callers that still use the old helper. */
export const showRewardedTestAd = showRewardedAd;