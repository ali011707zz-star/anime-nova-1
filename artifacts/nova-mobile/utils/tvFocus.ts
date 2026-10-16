import AsyncStorage from "@react-native-async-storage/async-storage";
import { useCallback, useEffect, useState } from "react";

type FocusMap = Record<string, string>;

const TV_FOCUS_KEY = "nova-tv-focus-v1";
const FOCUS_SAVE_DEBOUNCE_MS = 400;

let focusMapCache: FocusMap | null = null;
let focusMapReadInFlight: Promise<FocusMap> | null = null;
let focusMapSaveTimer: ReturnType<typeof setTimeout> | null = null;
let focusMapWriteQueue: Promise<void> = Promise.resolve();

function parseFocusMap(raw: string | null): FocusMap {
  if (!raw) return {};
  try {
    const parsed = JSON.parse(raw);
    return parsed && typeof parsed === "object" && !Array.isArray(parsed) ? parsed : {};
  } catch {
    return {};
  }
}

function readFocusMap(): Promise<FocusMap> {
  if (focusMapCache) return Promise.resolve(focusMapCache);
  if (!focusMapReadInFlight) {
    focusMapReadInFlight = AsyncStorage.getItem(TV_FOCUS_KEY)
      .then(parseFocusMap)
      .catch(() => ({}))
      .then((map) => {
        focusMapCache = map;
        return map;
      })
      .finally(() => {
        focusMapReadInFlight = null;
      });
  }
  return focusMapReadInFlight;
}

function scheduleFocusMapSave() {
  if (focusMapSaveTimer) clearTimeout(focusMapSaveTimer);
  focusMapSaveTimer = setTimeout(() => {
    focusMapSaveTimer = null;
    const snapshot = JSON.stringify(focusMapCache || {});
    focusMapWriteQueue = focusMapWriteQueue
      .catch(() => {})
      .then(() => AsyncStorage.setItem(TV_FOCUS_KEY, snapshot))
      .catch(() => {});
  }, FOCUS_SAVE_DEBOUNCE_MS);
}

/**
 * Persists the last meaningful remote target per screen family.
 * The value is deliberately only a stable item key, not a list index, so
 * pagination and changed catalog ordering do not restore the wrong card.
 */
export function useTvFocusMemory(scope: string) {
  const [preferredKey, setPreferredKey] = useState<string | null>(null);
  const [ready, setReady] = useState(false);
  const preferredKeyTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);

  useEffect(() => {
    let cancelled = false;
    setReady(false);
    readFocusMap().then((map) => {
      if (cancelled) return;
      setPreferredKey(typeof map[scope] === "string" ? map[scope] : null);
      setReady(true);
    });
    return () => {
      cancelled = true;
      if (preferredKeyTimerRef.current) {
        clearTimeout(preferredKeyTimerRef.current);
        preferredKeyTimerRef.current = null;
      }
    };
  }, [scope]);

  const rememberFocus = useCallback((key: string) => {
    const normalized = String(key).trim();
    if (!normalized) return;
    const rememberInMap = (map: FocusMap) => {
      const current = focusMapCache || map;
      if (current[scope] !== normalized) {
        current[scope] = normalized;
        focusMapCache = current;
        scheduleFocusMapSave();
      }
    };
    if (focusMapCache) rememberInMap(focusMapCache);
    else void readFocusMap().then(rememberInMap);

    if (preferredKeyTimerRef.current) clearTimeout(preferredKeyTimerRef.current);
    preferredKeyTimerRef.current = setTimeout(() => {
      preferredKeyTimerRef.current = null;
      setPreferredKey(normalized);
    }, FOCUS_SAVE_DEBOUNCE_MS);
  }, [scope]);

  return { preferredKey, ready, rememberFocus };
}