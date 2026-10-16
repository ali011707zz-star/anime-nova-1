import assert from "node:assert/strict";
import test from "node:test";
import {
  FCM_TOKEN_REFRESH_INTERVAL_MS,
  shouldRefreshFcmToken,
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
