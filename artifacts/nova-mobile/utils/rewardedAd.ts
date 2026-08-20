import { Platform } from "react-native";
import {
  AdEventType,
  RewardedAd,
  RewardedAdEventType,
  TestIds,
} from "react-native-google-mobile-ads";

/** Keep this true until a production AdMob app/unit ID is deliberately configured. */
export const NOVA_ADS_TEST_MODE = true;

const TEST_REWARDED_ID = TestIds.REWARDED;

export function showRewardedTestAd(): Promise<boolean> {
  if (Platform.OS === "web") return Promise.resolve(false);

  return new Promise((resolve) => {
    const ad = RewardedAd.createForAdRequest(TEST_REWARDED_ID, {
      requestNonPersonalizedAdsOnly: true,
    });
    let rewarded = false;
    let settled = false;
    const cleanup = () => subscriptions.forEach((unsubscribe) => unsubscribe());
    const finish = (value: boolean) => {
      if (settled) return;
      settled = true;
      cleanup();
      resolve(value);
    };
    const subscriptions = [
      ad.addAdEventListener(RewardedAdEventType.LOADED, () => {
        ad.show().catch(() => finish(false));
      }),
      ad.addAdEventListener(RewardedAdEventType.EARNED_REWARD, () => {
        rewarded = true;
      }),
      ad.addAdEventListener(AdEventType.ERROR, () => finish(false)),
      ad.addAdEventListener(AdEventType.CLOSED, () => finish(rewarded)),
    ];
    ad.load();
  });
}