import assert from "node:assert/strict";
import test from "node:test";
import {
  FCM_TOKEN_REFRESH_INTERVAL_MS,
  PUSH_REGISTER_DEDUPE_WINDOW_MS,
  buildPushSyncSignature,
  shouldProcessPushTokenEvent,
  shouldRefreshFcmToken,
  shouldSkipDuplicatePushRegister,
} from "./pushTokenPolicy.mjs";

test("refreshes when there is no cached FCM token", () => {
  assert.equal(shouldRefreshFcmToken(null, 0, 1000), true);
  assert.equal(shouldRefreshFcmToken("  ", 100, 1000), true);
});

test("reuses a token checked within the refresh window", () => {
  assert.equal(
    shouldRefreshFcmToken("cached-token", 1000, 1000 + FCM_TOKEN_REFRESH_INTERVAL_MS - 1),
    false,
  );
});

test("refreshes at the weekly boundary or after a clock rollback", () => {
  assert.equal(
    shouldRefreshFcmToken("cached-token", 1000, 1000 + FCM_TOKEN_REFRESH_INTERVAL_MS),
    true,
  );
  assert.equal(shouldRefreshFcmToken("cached-token", 2000, 1000), true);
});

test("a native token change bypasses the cache window", () => {
  assert.equal(shouldRefreshFcmToken("cached-token", 1000, 1100, true), true);
});

test("ignores native push token listener events when token did not change", () => {
  const token = "dwtbRINLQhWzsocdQs9CjA:APA91bEJc4DKzY1Xrcq73s-tWz1X6ejWdOb92gn5GcJj";
  assert.equal(shouldProcessPushTokenEvent(token, token, 0, 10_000), false);
  assert.equal(shouldProcessPushTokenEvent("short", null, 0, 10_000), false);
  assert.equal(shouldProcessPushTokenEvent(null, token, 0, 10_000), false);
});

test("processes native push token listener events only on genuine token rotation outside cooldown", () => {
  const oldToken = "dwtbRINLQhWzsocdQs9CjA:APA91bEJc4DKzY1Xrcq73s-tWz1X6ejWdOb92gn5GcJj";
  const newToken = "newTokenRINLQhWzsocdQs9CjA:APA91bEJc4DKzY1Xrcq73s-tWz1X6ejWdOb92gn5Gc";
  assert.equal(shouldProcessPushTokenEvent(newToken, oldToken, 0, 50_000), true);
  assert.equal(shouldProcessPushTokenEvent(newToken, oldToken, 40_000, 50_000), false);
  assert.equal(shouldProcessPushTokenEvent(newToken, oldToken, 10_000, 50_000), true);
});

test("skips duplicate push register calls for same token+userId within dedupe window", () => {
  const token = "dwtbRINLQhWzsocdQs9CjA:APA91bEJc4DKzY1Xrcq73s-tWz1X6ejWdOb92gn5GcJj";
  const sig = buildPushSyncSignature(token, "user-1");
  assert.equal(shouldSkipDuplicatePushRegister(token, "user-1", sig, 1000, 5000), true);
  assert.equal(shouldSkipDuplicatePushRegister(token, "user-2", sig, 1000, 5000), false);
  assert.equal(
    shouldSkipDuplicatePushRegister(token, "user-1", sig, 1000, 1000 + PUSH_REGISTER_DEDUPE_WINDOW_MS),
    false,
  );
  assert.equal(shouldSkipDuplicatePushRegister(token, "user-1", sig, 1000, 5000, PUSH_REGISTER_DEDUPE_WINDOW_MS, true), false);
});
