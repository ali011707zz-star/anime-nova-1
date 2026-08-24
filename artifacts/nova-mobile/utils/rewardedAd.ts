import { Platform } from "react-native";
import {
  LevelPlay,
  LevelPlayInitRequest,
  LevelPlayRewardedAd,
  type LevelPlayAdError,
  type LevelPlayAdInfo,
  type LevelPlayConfiguration,
  type LevelPlayInitError,
  type LevelPlayInitListener,
  type LevelPlayReward,
  type LevelPlayRewardedAdListener,
} from "unity-levelplay-mediation";

// This is the Android app key shown in the IronSource/LevelPlay account.
const LEVELPLAY_ANDROID_APP_KEY = "9qbxrfx8ldw4intrz";
// LevelPlay's rewarded-ad constructor expects the generated Ad Unit ID,
// not the human-readable unit name ("DefaultRewardedVideo").
const LEVELPLAY_REWARDED_AD_UNIT_ID = "0p2nzpuv2zkI178qo";
const LEVELPLAY_REWARDED_PLACEMENT = "Default";
const AD_LOAD_TIMEOUT_MS = 45_000;

let adsInitialization: Promise<void> | null = null;
let rewardedAd: LevelPlayRewardedAd | null = null;
let adRequestInFlight: Promise<boolean> | null = null;

function getRewardedAd(): LevelPlayRewardedAd {
  if (!rewardedAd) {
    rewardedAd = new LevelPlayRewardedAd(LEVELPLAY_REWARDED_AD_UNIT_ID);
  }
  return rewardedAd;
}

function logAdFailure(label: string, error: LevelPlayAdError | unknown) {
  console.warn(`[rewarded-ad] LevelPlay ${label}`, error);
}

export function initializeRewardedAds(): Promise<void> {
  if (Platform.OS !== "android") return Promise.resolve();
  if (!adsInitialization) {
    adsInitialization = new Promise((resolve, reject) => {
      const initListener: LevelPlayInitListener = {
        onInitSuccess: (configuration: LevelPlayConfiguration) => {
          console.log("[rewarded-ad] LevelPlay initialized", configuration);
          resolve();
        },
        onInitFailed: (error: LevelPlayInitError) => {
          logAdFailure("initialization failed", error);
          adsInitialization = null;
          reject(error);
        },
      };

      try {
        const request = LevelPlayInitRequest.builder(LEVELPLAY_ANDROID_APP_KEY).build();
        void LevelPlay.init(request, initListener);
      } catch (error) {
        adsInitialization = null;
        reject(error);
      }
    });
  }
  return adsInitialization;
}

export function showRewardedAd(): Promise<boolean> {
  if (Platform.OS !== "android") return Promise.resolve(false);
  if (adRequestInFlight) return adRequestInFlight;

  const request = new Promise<boolean>((resolve) => {
    let settled = false;
    let timeout: ReturnType<typeof setTimeout> | undefined;
    const ad = getRewardedAd();

    const finish = (value: boolean) => {
      if (settled) return;
      settled = true;
      if (timeout) clearTimeout(timeout);
      resolve(value);
    };

    const listener: LevelPlayRewardedAdListener = {
      onAdLoaded: (info: LevelPlayAdInfo) => {
        console.log("[rewarded-ad] LevelPlay loaded", info);
      },
      onAdLoadFailed: (error: LevelPlayAdError) => {
        logAdFailure("load failed", error);
        finish(false);
      },
      onAdDisplayed: (info: LevelPlayAdInfo) => {
        console.log("[rewarded-ad] LevelPlay displayed", info);
      },
      onAdDisplayFailed: (error: LevelPlayAdError, info: LevelPlayAdInfo) => {
        logAdFailure("display failed", { error, info });
        finish(false);
      },
      onAdClicked: (info: LevelPlayAdInfo) => {
        console.log("[rewarded-ad] LevelPlay clicked", info);
      },
      onAdClosed: (info: LevelPlayAdInfo) => {
        console.log("[rewarded-ad] LevelPlay closed", info);
        finish(false);
      },
      onAdRewarded: (reward: LevelPlayReward, info: LevelPlayAdInfo) => {
        console.log("[rewarded-ad] LevelPlay reward granted", { reward, info });
        finish(true);
      },
    };

    timeout = setTimeout(() => {
      logAdFailure("timed out", { timeoutMs: AD_LOAD_TIMEOUT_MS });
      finish(false);
    }, AD_LOAD_TIMEOUT_MS);

    void initializeRewardedAds()
      .then(async () => {
        ad.setListener(listener);
        await ad.loadAd();
        if (await ad.isAdReady()) {
          await ad.showAd(LEVELPLAY_REWARDED_PLACEMENT);
        } else {
          finish(false);
        }
      })
      .catch((error) => {
        logAdFailure("lifecycle failed", error);
        finish(false);
      });
  }).finally(() => {
    adRequestInFlight = null;
  });

  adRequestInFlight = request;
  return request;
}

export const NOVA_ADS_TEST_MODE = false;
export const showRewardedTestAd = showRewardedAd;