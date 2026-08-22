import { Platform } from "react-native";
import {
  AdEventType,
  MobileAds,
  RewardedAd,
  RewardedAdEventType,
} from "react-native-google-mobile-ads";

// Live Android rewarded unit. The server can also update this value remotely
// through /api/ads/state after the app refreshes its ad settings.
const LIVE_REWARDED_ID = "ca-app-pub-7738594986393012/4388351429";
const configuredRewardedId = process.env.EXPO_PUBLIC_ADMOB_REWARDED_AD_UNIT_ID?.trim();

/** Use only the production unit. A test unit must never be shown to users or
 * mixed into production reward accounting. */
export const NOVA_ADS_TEST_MODE = !configuredRewardedId;
let rewardedAdUnitId = configuredRewardedId || LIVE_REWARDED_ID;
const AD_LOAD_TIMEOUT_MS = 20_000;
let adsInitialization: Promise<void> | null = null;

/**
 * The native AdMob SDK must be initialized before creating a rewarded ad.
 * Calling RewardedAd.createForAdRequest() first can leave the request pending
 * forever on release builds, which makes the reward prompt look like ads are
 * unavailable.
 */
export function initializeRewardedAds(): Promise<void> {
  if (Platform.OS === "web") return Promise.resolve();
  if (!adsInitialization) {
    adsInitialization = MobileAds()
      .initialize()
      .then(() => undefined)
      .catch((error) => {
        adsInitialization = null;
        throw error;
      });
  }
  return adsInitialization;
}

export function showRewardedAd(): Promise<boolean> {
  if (Platform.OS === "web") return Promise.resolve(false);

  return new Promise((resolve) => {
    let rewarded = false;
    let settled = false;
    let timeout: ReturnType<typeof setTimeout> | undefined;
    let subscriptions: Array<() => void> = [];
    let retryCount = 0;
    const MAX_RETRIES = 1;
    const cleanup = () => {
      if (timeout) clearTimeout(timeout);
      subscriptions.forEach((unsubscribe) => unsubscribe());
      subscriptions = [];
    };
    const finish = (value: boolean) => {
      if (settled) return;
      settled = true;
      cleanup();
      resolve(value);
    };

    const armTimeout = () => {
      if (timeout) clearTimeout(timeout);
      timeout = setTimeout(() => {
        if (retryCount < MAX_RETRIES) {
          retryCount += 1;
          load(rewardedAdUnitId);
        } else {
          finish(false);
        }
      }, AD_LOAD_TIMEOUT_MS);
    };

    const load = (unitId: string) => {
      if (settled) return;
      cleanup();
      armTimeout();
      const ad = RewardedAd.createForAdRequest(unitId, {
        requestNonPersonalizedAdsOnly: true,
      });
      subscriptions = [
        ad.addAdEventListener(RewardedAdEventType.LOADED, () => {
          ad.show().catch((error) => {
            console.warn("[rewarded-ad] show failed", error);
            if (retryCount < MAX_RETRIES) {
              retryCount += 1;
              load(rewardedAdUnitId);
            } else {
              finish(false);
            }
          });
        }),
        ad.addAdEventListener(RewardedAdEventType.EARNED_REWARD, () => {
          rewarded = true;
        }),
        ad.addAdEventListener(AdEventType.ERROR, (error) => {
          console.warn("[rewarded-ad] load failed", {
            unitId,
            code: (error as any)?.code,
            message: (error as any)?.message,
          });
          if (retryCount < MAX_RETRIES) {
            retryCount += 1;
            load(rewardedAdUnitId);
          } else {
            finish(false);
          }
        }),
        ad.addAdEventListener(AdEventType.CLOSED, () => finish(rewarded)),
      ];
      ad.load();
    };

    initializeRewardedAds()
      .then(() => {
        if (settled) return;
        load(rewardedAdUnitId);
      })
      .catch((error) => {
        console.warn("[rewarded-ad] initialize failed", error);
        finish(false);
      });
  });
}

export function setRewardedAdUnitId(adUnitId: string | null | undefined): void {
  const value = adUnitId?.trim();
  if (value) rewardedAdUnitId = value;
}

/** Backward-compatible name for callers that still use the old helper. */
export const showRewardedTestAd = showRewardedAd;