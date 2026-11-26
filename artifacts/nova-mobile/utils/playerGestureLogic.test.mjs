import test from "node:test";
import assert from "node:assert/strict";
import {
  computeBurstSeekTarget,
  evaluateLockedScreenTap,
  evaluateSlideUnlock,
} from "./playerGestureLogic.mjs";

test("locked screen requires double-tap within window to reveal unlock slider", () => {
  const first = evaluateLockedScreenTap(0, 1000);
  assert.equal(first.shouldReveal, false);
  assert.equal(first.nextLastTapAt, 1000);

  // Too slow -> still hidden
  const slow = evaluateLockedScreenTap(first.nextLastTapAt, 1600);
  assert.equal(slow.shouldReveal, false);

  // Fast second tap -> reveals unlock slider and resets timer
  const fast = evaluateLockedScreenTap(slow.nextLastTapAt, 1850);
  assert.equal(fast.shouldReveal, true);
  assert.equal(fast.nextLastTapAt, 0);
});

test("slide-to-unlock enforces threshold and clamps cleanly in LTR and RTL", () => {
  const partial = evaluateSlideUnlock(80, 188, false);
  assert.equal(partial.unlocked, false);
  assert.equal(partial.offsetPx, 80);

  const complete = evaluateSlideUnlock(150, 188, false);
  assert.equal(complete.unlocked, true);
  assert.equal(complete.offsetPx, 150);

  const clampedOver = evaluateSlideUnlock(400, 188, false);
  assert.equal(clampedOver.offsetPx, 188);
  assert.equal(clampedOver.unlocked, true);

  const rtlComplete = evaluateSlideUnlock(-160, 188, true);
  assert.equal(rtlComplete.unlocked, true);
  assert.equal(rtlComplete.offsetPx, -160);

  const rtlWrongWay = evaluateSlideUnlock(50, 188, true);
  assert.equal(rtlWrongWay.offsetPx, 0);
  assert.equal(rtlWrongWay.unlocked, false);
});

test("burst seek accumulates rapid ±10s taps and clamps to episode duration", () => {
  const s1 = computeBurstSeekTarget({
    currentPosition: 100,
    pendingTarget: null,
    currentDelta: 0,
    direction: 1,
    stepSeconds: 10,
    duration: 1400,
  });
  assert.deepEqual(s1, { target: 110, delta: 10 });

  const s2 = computeBurstSeekTarget({
    currentPosition: 100,
    pendingTarget: s1.target,
    currentDelta: s1.delta,
    direction: 1,
    stepSeconds: 10,
    duration: 1400,
  });
  assert.deepEqual(s2, { target: 120, delta: 20 });

  // Reversing resets accumulated delta cleanly
  const s3 = computeBurstSeekTarget({
    currentPosition: 100,
    pendingTarget: s2.target,
    currentDelta: s2.delta,
    direction: -1,
    stepSeconds: 10,
    duration: 1400,
  });
  assert.deepEqual(s3, { target: 110, delta: -10 });

  // Clamps to 0 and duration
  const clampEnd = computeBurstSeekTarget({
    currentPosition: 1395,
    pendingTarget: null,
    currentDelta: 0,
    direction: 1,
    stepSeconds: 10,
    duration: 1400,
  });
  assert.equal(clampEnd.target, 1400);
});
