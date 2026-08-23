import { Platform } from "react-native";
import {
  AdResultType,
  AdType,
  initializeStartIoSdk,
  loadAd,
  showAd,
} from "react-native-start-io-sdk";

// Start.io application ID created for Anime NOVA in the Start.io portal.
// Start.io uses an application ID (not an AdMob ad-unit ID).
const START_IO_ANDROID_APP_ID = "207356648";
const AD_INIT_SETTLE_MS = 1_500;
const AD_LOAD_TIMEOUT_MS = 45_000;
const AD_LOAD_RETRIES = 2;

let adsInitialization: Promise<void> | null = null;
let adRequestInFlight: Promise<boolean> | null = null;

/**
 * Start.io is the only rewarded provider in the Android build.
 * The SDK is Android-only for this integration; iOS remains a no-op until
 * an iOS Start.io application ID is supplied.
 */
export function initializeRewardedAds(): Promise<void> {
  if (Platform.OS !== "android") return Promise.resolve();
  if (!adsInitialization) {
    try {
      initializeStartIoSdk({
        androidAppId: START_IO_ANDROID_APP_ID,
        testAd: false,
        // Keep return ads enabled; disabling this option can prevent the
        // Start.io SDK from completing its normal ad-request lifecycle.
        returnAd: true,
      });
      // Start.io's native initializer is callback-based but the JS wrapper
      // returns void. Do not race loadAd against that native initialization.
      adsInitialization = new Promise((resolve) => {
        setTimeout(resolve, AD_INIT_SETTLE_MS);
      });
    } catch (error) {
      adsInitialization = null;
      return Promise.reject(error);
    }
  }
  return adsInitialization;
}

/**
 * Loads and shows a Start.io rewarded video. A reward is granted only after
 * Start.io reports AdRewarded, never merely after the ad is loaded or closed.
 */
export function showRewardedAd(): Promise<boolean> {
  if (Platform.OS !== "android") return Promise.resolve(false);
  if (adRequestInFlight) return adRequestInFlight;

  adRequestInFlight = new Promise((resolve) => {
    let settled = false;
    let timeout: ReturnType<typeof setTimeout> | undefined;
    const finish = (value: boolean) => {
      if (settled) return;
      settled = true;
      if (timeout) clearTimeout(timeout);
      resolve(value);
    };

    timeout = setTimeout(() => finish(false), AD_LOAD_TIMEOUT_MS);

    const loadAndShow = async () => {
      await initializeRewardedAds();
      let lastError: unknown;
      for (let attempt = 1; attempt <= AD_LOAD_RETRIES && !settled; attempt += 1) {
        try {
          await loadAd(AdType.REWARDED_VIDEO);
          if (settled) return;
          showAd((result) => {
            if (result === AdResultType.AdRewarded) {
              finish(true);
            } else if (
              result === AdResultType.AdNotDisplayed ||
              result === AdResultType.AdHidden
            ) {
              // Do not leave the caller waiting when Start.io has no fill or
              // the user closes the creative before it starts.
              finish(false);
            }
          });
          return;
        } catch (error) {
          lastError = error;
          if (attempt < AD_LOAD_RETRIES) {
            await new Promise((resolve) => setTimeout(resolve, 1200));
          }
        }
      }
      console.warn("[rewarded-ad] Start.io load/show failed", lastError);
      finish(false);
    };
    void loadAndShow().catch((error) => {
      console.warn("[rewarded-ad] Start.io lifecycle failed", error);
      finish(false);
    });
  }).finally(() => {
    adRequestInFlight = null;
  });
  return adRequestInFlight;
}

export const NOVA_ADS_TEST_MODE = false;
export const showRewardedTestAd = showRewardedAd;