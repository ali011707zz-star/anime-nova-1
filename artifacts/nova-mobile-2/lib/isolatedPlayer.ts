import { requireNativeModule } from "expo-modules-core";
import { Platform } from "react-native";

/**
 * Config accepted by the isolated (separate-process) native player.
 * See IsolatedPlayerActivity.kt / IsolatedPlayerModule.kt in
 * modules/nova-media3 for the native side, and
 * artifacts/nova-mobile/docs/NOVA_PLAYER_FULL_ISOLATION_PLAN.md for why this
 * exists: a crash inside this player can never close the main app, because
 * it runs in its own Android process (`:player`), not inside the RN process
 * RiftPlayer/NovaMedia3View share.
 */
export type IsolatedPlayerConfig = {
  sourceUrl: string;
  sourceHeaders?: Record<string, string>;
  subtitleUrl?: string;
  subtitleLanguage?: string;
  title?: string;
  episodeLabel?: string;
  initialPositionSeconds?: number;
  introStartSeconds?: number;
  introEndSeconds?: number;
  outroStartSeconds?: number;
  outroEndSeconds?: number;
  sleepTimerMinutes?: number;
};

export type IsolatedPlayerResult = {
  positionSeconds: number;
  durationSeconds: number;
  ended: boolean;
  /**
   * True when the result could not be attributed to a normal close (e.g. the
   * `:player` process died without reporting back — a genuine native
   * crash). The isolation goal was still met: only that process was lost,
   * not the app calling this function.
   */
  crashed: boolean;
};

let nativeModule: { open(config: Record<string, unknown>): Promise<IsolatedPlayerResult> } | null = null;
function getNativeModule() {
  if (nativeModule) return nativeModule;
  nativeModule = requireNativeModule("NovaIsolatedPlayer");
  return nativeModule;
}

/**
 * Opens video playback in a separate Android process. Resolves once the
 * player closes (user back-press, playback ended, playback error, or the
 * isolated process crashing) with the last known watch position so callers
 * can persist progress the same way they would for the in-process player.
 *
 * Android only — first isolation slice, no iOS equivalent yet (iOS does not
 * have this crash-isolation problem the same way: a single-process app is
 * standard there, and process-per-activity isn't an Android-style concept).
 */
export async function openIsolatedPlayer(
  config: IsolatedPlayerConfig
): Promise<IsolatedPlayerResult> {
  if (Platform.OS !== "android") {
    throw new Error("openIsolatedPlayer is only available on Android.");
  }
  if (!config.sourceUrl?.trim()) {
    throw new Error("openIsolatedPlayer requires a non-empty sourceUrl.");
  }

  return getNativeModule().open({
    sourceUrl: config.sourceUrl,
    sourceHeaders: config.sourceHeaders ? JSON.stringify(config.sourceHeaders) : undefined,
    subtitleUrl: config.subtitleUrl,
    subtitleLanguage: config.subtitleLanguage,
    title: config.title,
    episodeLabel: config.episodeLabel,
    initialPositionSeconds: config.initialPositionSeconds,
    introStartSeconds: config.introStartSeconds,
    introEndSeconds: config.introEndSeconds,
    outroStartSeconds: config.outroStartSeconds,
    outroEndSeconds: config.outroEndSeconds,
    sleepTimerMinutes: config.sleepTimerMinutes,
  });
}
