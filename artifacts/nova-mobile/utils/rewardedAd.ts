import { Platform } from "react-native";
import {
  AdEventType,
  RewardedAd,
  RewardedAdEventType,
} from "react-native-google-mobile-ads";

/** Keep this true until a production AdMob app/unit ID is deliberately configured. */
export const NOVA_ADS_TEST_MODE = true;

// Google’s official Android rewarded test unit ID. Keep this explicit so a
// platform/library change cannot accidentally switch the app to a live unit.
const TEST_REWARDED_ID = "ca-app-pub-3940256099942544/5224354917";
const AD_LOAD_TIMEOUT_MS = 20_000;

export function showRewardedTestAd(): Promise<boolean> {
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
      const ad = RewardedAd.createForAdRequest(TEST_REWARDED_ID, {
        requestNonPersonalizedAdsOnly: true,
      });
      subscriptions = [
        ad.addAdEventListener(RewardedAdEventType.LOADED, () => {
          ad.show().catch(() => finish(false));
        }),
        ad.addAdEventListener(RewardedAdEventType.EARNED_REWARD, () => {
          rewarded = true;
        }),
        ad.addAdEventListener(AdEventType.ERROR, () => finish(false)),
        ad.addAdEventListener(AdEventType.CLOSED, () => finish(rewarded)),
      ];
      timeout = setTimeout(() => finish(false), AD_LOAD_TIMEOUT_MS);
      ad.load();
    } catch {
      finish(false);
    }
  });
}