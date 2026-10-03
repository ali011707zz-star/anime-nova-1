import { useCallback, useEffect, useLayoutEffect, useRef } from "react";
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
  const pendingLockRef = useRef<Promise<void>>(Promise.resolve());
  const requestOrientationLock = useCallback((lock: ScreenOrientation.OrientationLock) => {
    pendingLockRef.current = pendingLockRef.current
      .catch(() => {})
      .then(() => ScreenOrientation.lockAsync(lock))
      .catch(() => {});
  }, []);

  useLayoutEffect(() => {
    navigation.setOptions({
      // Leave native rotation available to the player's manual orientation
      // button while it is active; the lock below supplies the initial landscape.
      orientation: tvMode ? "landscape" : playerActive ? "default" : "portrait",
    });

    if (tvMode || Platform.OS === "web") return;

    requestOrientationLock(
      playerActive
        ? ScreenOrientation.OrientationLock.LANDSCAPE_RIGHT
        : ScreenOrientation.OrientationLock.PORTRAIT_UP,
    );
  }, [navigation, playerActive, requestOrientationLock, tvMode]);

  // Only restore portrait when the watch route unmounts. The lock effect also
  // cleans up when playerActive changes; restoring portrait there races the
  // new landscape lock and can turn the screen upright right after opening.
  useEffect(() => {
    return () => {
      if (!tvMode && Platform.OS !== "web") {
        requestOrientationLock(ScreenOrientation.OrientationLock.PORTRAIT_UP);
      }
    };
  }, [requestOrientationLock, tvMode]);
}
