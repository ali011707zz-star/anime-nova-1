import { useLayoutEffect } from "react";
import { useNavigation } from "expo-router";

/**
 * Keep watch routes portrait while selecting/loading a source, then allow the
 * device's supported portrait/landscape orientations only while a player is
 * actually visible. TV orientation remains owned by the root TV lock.
 */
export function useWatchPlayerOrientation(playerActive: boolean, tvMode: boolean) {
  const navigation = useNavigation();

  useLayoutEffect(() => {
    navigation.setOptions({
      orientation: tvMode ? "landscape" : playerActive ? "default" : "portrait",
    });
  }, [navigation, playerActive, tvMode]);
}