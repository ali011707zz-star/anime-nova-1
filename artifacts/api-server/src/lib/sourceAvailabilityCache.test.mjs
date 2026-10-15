import test from "node:test";
import assert from "node:assert/strict";
import {
  getSourceAvailabilityCache,
  setSourceAvailabilityCache,
  SOURCE_AVAILABILITY_CACHE_TTL_MS,
} from "./sourceAvailabilityCache.mjs";

test("reuses successful availability briefly without storing negative results", () => {
  const key = `provider:${Date.now()}:episode`;
  const rows = [{ site: "kawaii", quality: "720p", url: "" }];

  setSourceAvailabilityCache(key, rows, 10_000);
  assert.deepEqual(getSourceAvailabilityCache(key, 10_001), rows);
  setSourceAvailabilityCache(key, [], 10_002);
  assert.deepEqual(getSourceAvailabilityCache(key, 10_003), rows);
  assert.equal(getSourceAvailabilityCache(key, 10_000 + SOURCE_AVAILABILITY_CACHE_TTL_MS), null);
});

test("returns copies so one response cannot mutate the cached rows", () => {
  const key = `provider:${Date.now()}:copy`;
  setSourceAvailabilityCache(key, [{ site: "sanime", quality: "HD" }], 20_000);
  const hit = getSourceAvailabilityCache(key, 20_001);
  hit[0].quality = "broken";
  assert.equal(getSourceAvailabilityCache(key, 20_002)[0].quality, "HD");
});
