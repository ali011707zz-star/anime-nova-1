export declare const LOCK_DOUBLE_TAP_WINDOW_MS: number;
export declare const SLIDE_UNLOCK_THRESHOLD_RATIO: number;
export declare const SEEK_BURST_DEBOUNCE_MS: number;
export declare const SEEK_BURST_RESET_MS: number;

export declare function evaluateLockedScreenTap(
  lastTapAtMs: number,
  nowMs: number,
  windowMs?: number,
): { shouldReveal: boolean; nextLastTapAt: number };

export declare function evaluateSlideUnlock(
  dx: number,
  maxTravelPx: number,
  isRtl?: boolean,
  thresholdRatio?: number,
): { offsetPx: number; progress: number; unlocked: boolean };

export declare function computeBurstSeekTarget(params: {
  currentPosition: number;
  pendingTarget: number | null;
  currentDelta: number;
  direction: 1 | -1;
  stepSeconds?: number;
  duration: number;
}): { target: number; delta: number };
