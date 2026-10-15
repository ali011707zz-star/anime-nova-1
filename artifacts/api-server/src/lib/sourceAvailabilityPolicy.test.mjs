import test from "node:test";
import assert from "node:assert/strict";
import {
  orderAvailabilityJobs,
  sourceAvailabilityTimeoutMs,
  sourceFlightKey,
} from "./sourceAvailabilityPolicy.mjs";

test("prioritizes the user's core anime providers without reordering peers", () => {
  const jobs = ["anslayer", "sanime", "kawaii", "animewitcher", "megaplay", "anifox"]
    .map(site => ({ site, run: async () => site }));
  assert.deepEqual(
    orderAvailabilityJobs(jobs).map(job => job.site),
    ["kawaii", "megaplay", "animewitcher", "sanime", "anslayer", "anifox"],
  );
});

test("availability budgets cannot undercut the providers' request chains", () => {
  assert.equal(sourceAvailabilityTimeoutMs("sanime", 4_000), 24_000);
  assert.equal(sourceAvailabilityTimeoutMs("megaplay", 5_000), 25_000);
  assert.equal(sourceAvailabilityTimeoutMs("animewitcher", 20_000), 24_000);
  assert.equal(sourceAvailabilityTimeoutMs("anifox", 30_000), 30_000);
  assert.equal(sourceAvailabilityTimeoutMs("unknown", 2_000), 11_000);
});

test("availability metadata and playable extraction never share a live flight", () => {
  assert.notEqual(sourceFlightKey("kawaii:show:ep1", true), sourceFlightKey("kawaii:show:ep1", false));
  assert.equal(sourceFlightKey("kawaii:show:ep1", true), "kawaii:show:ep1:availability:live");
});
