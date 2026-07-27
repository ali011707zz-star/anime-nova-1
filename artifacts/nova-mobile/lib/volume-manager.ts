/**
 * Local stub for react-native-volume-manager.
 * react-native-volume-manager@2.0.8 fails to load during Expo prebuild on
 * GitHub Actions (CJS loader error with RN 0.81.5 + React 19).
 *
 * This stub provides the same API surface used in RiftPlayer.tsx using
 * React Native's built-in NativeModules where possible, falling back to
 * no-ops so the build never breaks.
 */

import { NativeModules, NativeEventEmitter, Platform } from "react-native";

type VolumeResult = { volume: number } | number;
type VolumeListener = (result: VolumeResult) => void;
type Subscription = { remove: () => void };

const RNVolumeManager = NativeModules.RNVolumeManager as
  | {
      getVolume?: (type: string) => Promise<number>;
      setVolume?: (volume: number, options?: object) => Promise<void>;
    }
  | undefined;

const emitter =
  RNVolumeManager && Platform.OS !== "web"
    ? new NativeEventEmitter(NativeModules.RNVolumeManager)
    : null;

export const VolumeManager = {
  getVolume: async (_type: string = "music"): Promise<VolumeResult> => {
    try {
      if (RNVolumeManager?.getVolume) {
        const vol = await RNVolumeManager.getVolume(_type);
        return { volume: vol };
      }
    } catch {}
    return { volume: 1 };
  },

  setVolume: async (volume: number, _options?: object): Promise<void> => {
    try {
      if (RNVolumeManager?.setVolume) {
        await RNVolumeManager.setVolume(volume, _options);
      }
    } catch {}
  },

  addVolumeListener: (callback: VolumeListener): Subscription => {
    try {
      if (emitter) {
        const sub = emitter.addListener("RNVMVolumeChanged", callback);
        return { remove: () => sub.remove() };
      }
    } catch {}
    return { remove: () => {} };
  },
};
