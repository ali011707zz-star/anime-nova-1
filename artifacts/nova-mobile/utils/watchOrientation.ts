import { useCallback, useLayoutEffect, useRef } from "react";
import { AppState, Platform } from "react-native";
import * as ScreenOrientation from "expo-screen-orientation";

type OrientationLock = ScreenOrientation.OrientationLock;

const PORTRAIT_LOCK = ScreenOrientation.OrientationLock.PORTRAIT_UP;
const LANDSCAPE_LOCK = ScreenOrientation.OrientationLock.LANDSCAPE_RIGHT;

let nextSessionId = 0;
let activeSessionId: number | null = null;
let pendingLock: OrientationLock | null = null;
let lastAppliedLock: OrientationLock | null = null;
let deferredBackgroundLock: OrientationLock | null = null;
let lockQueueRunning = false;

// Keep all watch-route lock requests on one queue. Never invoke native
// ScreenOrientation.lockAsync while the Activity is in the background, as
// forcing a configuration change on a stopped Activity causes Background ANRs
// on Android 11+ (obtainStyledAttributes lock contention).
function flushOrientationLockQueue(): void {
  if (lockQueueRunning || pendingLock === null) return;
  if (Platform.OS !== "web" && AppState.currentState && AppState.currentState !== "active") {
    deferredBackgroundLock = pendingLock;
    pendingLock = null;
    return;
  }

  lockQueueRunning = true;
  void (async () => {
    while (pendingLock !== null) {
      if (Platform.OS !== "web" && AppState.currentState && AppState.currentState !== "active") {
        deferredBackgroundLock = pendingLock;
        pendingLock = null;
        break;
      }
      const nextLock = pendingLock;
      pendingLock = null;
      if (lastAppliedLock === nextLock) continue;
      try {
        await ScreenOrientation.lockAsync(nextLock);
        lastAppliedLock = nextLock;
      } catch {
        // Orientation locks can be unavailable on web/unsupported devices.
      }
    }
    lockQueueRunning = false;
  })();
}

export function queueOrientationLock(lock: OrientationLock): void {
  pendingLock = lock;
  deferredBackgroundLock = null;
  flushOrientationLockQueue();
}

if (Platform.OS !== "web") {
  AppState.addEventListener("change", (state) => {
    if (state === "active" && deferredBackgroundLock !== null) {
      const resumeLock = deferredBackgroundLock;
      deferredBackgroundLock = null;
      queueOrientationLock(resumeLock);
    }
  });
}

/**
 * Own phone orientation for watch routes:
 * - picker/loading and exit: portrait
 * - player entry: landscape
 * - manual player button: toggles portrait/landscape through this same owner
 *
 * TV orientation remains owned by the root TV lock.
 */
export function useWatchPlayerOrientation(
  playerActive: boolean,
  tvMode: boolean,
): (() => void) | undefined {
  const sessionIdRef = useRef<number | null>(null);
  if (sessionIdRef.current === null) {
    sessionIdRef.current = ++nextSessionId;
  }

  const requestedLockRef = useRef<OrientationLock>(PORTRAIT_LOCK);
  const playerActiveRef = useRef(playerActive);
  playerActiveRef.current = playerActive;

  // Claim/release the shared orientation owner with layout-effect timing so a
  // stale route cleanup cannot override a newly opened watch route.
  useLayoutEffect(() => {
    if (tvMode || Platform.OS === "web") return;

    const sessionId = sessionIdRef.current!;
    activeSessionId = sessionId;
    return () => {
      if (activeSessionId !== sessionId) return;
      activeSessionId = null;
      requestedLockRef.current = PORTRAIT_LOCK;
      queueOrientationLock(PORTRAIT_LOCK);
    };
  }, [tvMode]);

  useLayoutEffect(() => {
    if (tvMode || Platform.OS === "web") return;

    const sessionId = sessionIdRef.current!;
    if (activeSessionId !== sessionId) return;

    // Every player entry starts in landscape, including after a prior manual
    // portrait selection. Returning to the picker resets the next entry.
    const lock = playerActive ? LANDSCAPE_LOCK : PORTRAIT_LOCK;
    requestedLockRef.current = lock;
    queueOrientationLock(lock);
  }, [playerActive, tvMode]);

  const toggleOrientation = useCallback(() => {
    const sessionId = sessionIdRef.current;
    if (
      tvMode ||
      Platform.OS === "web" ||
      !playerActiveRef.current ||
      sessionId === null ||
      activeSessionId !== sessionId
    ) {
      return;
    }

    const nextLock = requestedLockRef.current === LANDSCAPE_LOCK
      ? PORTRAIT_LOCK
      : LANDSCAPE_LOCK;
    requestedLockRef.current = nextLock;
    queueOrientationLock(nextLock);
  }, [tvMode]);

  return tvMode || Platform.OS === "web" ? undefined : toggleOrientation;
}
