import { useLayoutEffect } from "react";
import { useNavigation } from "expo-router";
import { Platform } from "react-native";
import * as ScreenOrientation from "expo-screen-orientation";

/**
 * Keep watch routes portrait while selecting/loading a source, then lock phone
 * playback to landscape. Restore portrait when playback closes. TV orientation
 * remains owned by the root TV lock.
 */
export function useWatchPlayerOrientation(playerActive: boolean, tvMode: boolean) {
  const navigation = useNavigation();

  useLayoutEffect(() => {
    navigation.setOptions({
      // Leave native rotation available to the player's manual orientation
      // button while it is active; the lock below supplies the initial landscape.
      orientation: tvMode ? "landscape" : playerActive ? "default" : "portrait",
    });

    if (tvMode || Platform.OS === "web") return;

    ScreenOrientation.lockAsync(
      playerActive
        ? ScreenOrientation.OrientationLock.LANDSCAPE_RIGHT
        : ScreenOrientation.OrientationLock.PORTRAIT_UP,
    ).catch(() => {});

    return () => {
      if (!tvMode) {
        ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
      }
    };
  }, [navigation, playerActive, tvMode]);
}
