import AsyncStorage from "@react-native-async-storage/async-storage";
import { useCallback, useEffect, useState } from "react";

type FocusMap = Record<string, string>;

const TV_FOCUS_KEY = "nova-tv-focus-v1";

async function readFocusMap(): Promise<FocusMap> {
  try {
    const raw = await AsyncStorage.getItem(TV_FOCUS_KEY);
    if (!raw) return {};
    const parsed = JSON.parse(raw);
    return parsed && typeof parsed === "object" && !Array.isArray(parsed) ? parsed : {};
  } catch {
    return {};
  }
}

/**
 * Persists the last meaningful remote target per screen family.
 * The value is deliberately only a stable item key, not a list index, so
 * pagination and changed catalog ordering do not restore the wrong card.
 */
export function useTvFocusMemory(scope: string) {
  const [preferredKey, setPreferredKey] = useState<string | null>(null);
  const [ready, setReady] = useState(false);

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
    };
  }, [scope]);

  const rememberFocus = useCallback((key: string) => {
    const normalized = String(key).trim();
    if (!normalized) return;
    setPreferredKey(normalized);
    readFocusMap().then((map) => {
      map[scope] = normalized;
      AsyncStorage.setItem(TV_FOCUS_KEY, JSON.stringify(map)).catch(() => {});
    });
  }, [scope]);

  return { preferredKey, ready, rememberFocus };
}