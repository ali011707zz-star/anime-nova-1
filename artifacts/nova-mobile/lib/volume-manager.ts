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
import { EventEmitter, requireNativeModule } from "expo-modules-core";

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

type NovaVolumeModule = {
  getVolume: () => Promise<number>;
  setVolume: (volume: number, showUi: boolean) => Promise<void>;
};

let novaVolume: NovaVolumeModule | null = null;
let novaVolumeEvents: EventEmitter<NovaVolumeModule> | null = null;
if (Platform.OS !== "web") {
  try {
    novaVolume = requireNativeModule<NovaVolumeModule>("NovaVolume");
    novaVolumeEvents = new EventEmitter(novaVolume);
  } catch {
    // Expo Go does not contain project-local native modules. A development
    // build gets the real implementation; the legacy bridge remains a safe
    // compatibility fallback.
  }
}

export const VolumeManager = {
  getVolume: async (_type: string = "music"): Promise<VolumeResult> => {
    try {
      if (novaVolume) return { volume: await novaVolume.getVolume() };
      if (RNVolumeManager?.getVolume) {
        const vol = await RNVolumeManager.getVolume(_type);
        return { volume: vol };
      }
    } catch {}
    return { volume: 1 };
  },

  setVolume: async (volume: number, options?: { showUI?: boolean }): Promise<void> => {
    try {
      if (novaVolume) {
        await novaVolume.setVolume(volume, options?.showUI === true);
        return;
      }
      if (RNVolumeManager?.setVolume) {
        await RNVolumeManager.setVolume(volume, options);
      }
    } catch {}
  },

  addVolumeListener: (callback: VolumeListener): Subscription => {
    try {
      if (novaVolumeEvents) {
        const sub = novaVolumeEvents.addListener("onVolumeChange", callback);
        return { remove: () => sub.remove() };
      }
      if (emitter) {
        const sub = emitter.addListener("RNVMVolumeChanged", callback);
        return { remove: () => sub.remove() };
      }
    } catch {}
    return { remove: () => {} };
  },
};
