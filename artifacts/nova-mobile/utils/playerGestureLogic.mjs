export const LOCK_DOUBLE_TAP_WINDOW_MS = 360;
export const SLIDE_UNLOCK_THRESHOLD_RATIO = 0.72;
export const SEEK_BURST_DEBOUNCE_MS = 145;
export const SEEK_BURST_RESET_MS = 900;

/**
 * Determines whether a tap on a locked screen qualifies as a double-tap to reveal
 * the slide-to-unlock bar. Single taps return shouldReveal: false.
 */
export function evaluateLockedScreenTap(lastTapAtMs, nowMs, windowMs = LOCK_DOUBLE_TAP_WINDOW_MS) {
  if (typeof lastTapAtMs === "number" && lastTapAtMs > 0 && nowMs - lastTapAtMs <= windowMs) {
    return { shouldReveal: true, nextLastTapAt: 0 };
  }
  return { shouldReveal: false, nextLastTapAt: nowMs };
}

/**
 * Computes clamped thumb offset, progress ratio, and unlock completion for slide-to-unlock.
 * Supports both LTR (drag right) and RTL (drag left) by accepting absolute travel distance.
 */
export function evaluateSlideUnlock(dx, maxTravelPx, isRtl = false, thresholdRatio = SLIDE_UNLOCK_THRESHOLD_RATIO) {
  const safeMax = Math.max(1, Number(maxTravelPx) || 1);
  const directionalDx = isRtl ? -dx : dx;
  const clamped = Math.min(Math.max(directionalDx, 0), safeMax);
  const progress = clamped / safeMax;
  return {
    offsetPx: clamped === 0 ? 0 : (isRtl ? -clamped : clamped),
    progress,
    unlocked: progress >= thresholdRatio,
  };
}

/**
 * Accumulates rapid ±10s seek taps cleanly from the latest optimistic target,
 * clamping strictly to [0, duration].
 */
export function computeBurstSeekTarget({
  currentPosition,
  pendingTarget,
  currentDelta,
  direction,
  stepSeconds = 10,
  duration,
}) {
  const maxDur = Number.isFinite(duration) && duration > 0 ? duration : 0;
  const step = Math.max(1, Number(stepSeconds) || 10);
  const base = Number.isFinite(pendingTarget) ? pendingTarget : Math.max(0, Number(currentPosition) || 0);
  const sameDir = currentDelta !== 0 && Math.sign(currentDelta) === Math.sign(direction);
  const nextTarget = maxDur > 0
    ? Math.min(Math.max(base + direction * step, 0), maxDur)
    : Math.max(0, base + direction * step);
  const nextDelta = (sameDir ? currentDelta : 0) + direction * step;
  return {
    target: nextTarget,
    delta: nextDelta,
  };
}
