import { useCallback, useEffect, useRef } from "react";
import { Platform } from "react-native";
import * as ScreenOrientation from "expo-screen-orientation";

function requestOrientation(portrait: boolean): void {
  const lock = portrait
    ? ScreenOrientation.OrientationLock.PORTRAIT_UP
    : ScreenOrientation.OrientationLock.LANDSCAPE_RIGHT;
  void ScreenOrientation.lockAsync(lock).catch(() => {});
}

export function useWatchPlayerOrientation(
  playerActive: boolean,
  tvMode: boolean,
): () => void {
  const isPortraitRef = useRef(false);

  useEffect(() => {
    if (Platform.OS === "web" || tvMode) return;

    isPortraitRef.current = !playerActive;
    requestOrientation(isPortraitRef.current);

    const subscription = ScreenOrientation.addOrientationChangeListener((event) => {
      const orientation = event.orientationInfo.orientation;
      isPortraitRef.current =
        orientation === ScreenOrientation.Orientation.PORTRAIT_UP ||
        orientation === ScreenOrientation.Orientation.PORTRAIT_DOWN;
    });

    return () => {
      subscription.remove();
      if (playerActive) {
        isPortraitRef.current = true;
        requestOrientation(true);
      }
    };
  }, [playerActive, tvMode]);

  return useCallback(() => {
    if (Platform.OS === "web" || tvMode) return;

    const nextPortrait = !isPortraitRef.current;
    isPortraitRef.current = nextPortrait;
    requestOrientation(nextPortrait);
  }, [tvMode]);
}
