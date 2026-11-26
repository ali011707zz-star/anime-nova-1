import test from "node:test";
import assert from "node:assert/strict";
import { getDeviceClass, getPrimaryCtaMetrics } from "./responsiveUiLogic.mjs";

test("getDeviceClass classifies phone, tablet/iPad, and TV accurately", () => {
  assert.equal(getDeviceClass({ width: 390, tvMode: false }), "phone");
  assert.equal(getDeviceClass({ width: 768, tvMode: false }), "tablet");
  assert.equal(getDeviceClass({ width: 1024, tvMode: false }), "tablet");
  assert.equal(getDeviceClass({ width: 390, tvMode: true }), "tv");
});

test("getPrimaryCtaMetrics returns compact phone height and bounded tablet/TV maxWidth", () => {
  const phone = getPrimaryCtaMetrics({ width: 390, tvMode: false });
  const tablet = getPrimaryCtaMetrics({ width: 820, tvMode: false });
  const tv = getPrimaryCtaMetrics({ width: 1280, tvMode: true });
  assert.ok(phone.minHeight <= 48 && phone.titleSize <= 14);
  assert.equal(phone.maxWidth, undefined);
  assert.ok(tablet.minHeight > phone.minHeight && tablet.maxWidth === 440);
  assert.ok(tv.minHeight >= tablet.minHeight && tv.maxWidth === 500);
});
