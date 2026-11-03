import test from "node:test";
import assert from "node:assert/strict";
import {
  SOURCE_AVAILABILITY_CONCURRENCY,
  orderAvailabilityJobs,
  sourceAvailabilityJobTimeoutMs,
  sourceAvailabilityScanTimeoutMs,
  sourceAvailabilityTimeoutMs,
} from "./sourceAvailabilityPolicy.mjs";

test("prioritizes the user's core anime providers without reordering peers", () => {
  const jobs = ["anslayer", "sanime", "kawaii", "animewitcher", "megaplay", "anifox", "animeify", "anime4up2", "animedar"]
    .map(site => ({ site, run: async () => site }));
  assert.deepEqual(
    orderAvailabilityJobs(jobs).map(job => job.site),
    ["kawaii", "megaplay", "anslayer", "animeify", "anime4up2", "animedar", "sanime", "anifox", "animewitcher"],
  );
});

test("availability checks start the fast providers in the previous 10-worker first wave", () => {
  assert.equal(SOURCE_AVAILABILITY_CONCURRENCY, 10);
});

test("availability budgets cannot undercut the providers' request chains", () => {
  assert.equal(sourceAvailabilityTimeoutMs("sanime", 4_000), 24_000);
  assert.equal(sourceAvailabilityTimeoutMs("megaplay", 5_000), 18_000);
  assert.equal(sourceAvailabilityTimeoutMs("animewitcher", 20_000), 45_000);
  assert.equal(sourceAvailabilityTimeoutMs("kawaii", 10_000), 15_000);
  assert.equal(sourceAvailabilityTimeoutMs("anifox", 30_000), 35_000);
  assert.equal(sourceAvailabilityTimeoutMs("unknown", 2_000), 11_000);
});

test("scan deadline covers every FIFO worker wave plus a safety margin", () => {
  const jobs = orderAvailabilityJobs([
    { site: "kawaii", timeoutMs: sourceAvailabilityJobTimeoutMs("kawaii", 10_000), run: async () => {} },
    { site: "megaplay", timeoutMs: sourceAvailabilityJobTimeoutMs("megaplay", 5_000), run: async () => {} },
    { site: "animewitcher", timeoutMs: sourceAvailabilityJobTimeoutMs("animewitcher", 20_000), run: async () => {} },
    { site: "sanime", timeoutMs: sourceAvailabilityJobTimeoutMs("sanime", 4_000), run: async () => {} },
    { site: "anslayer", timeoutMs: sourceAvailabilityJobTimeoutMs("anslayer", 15_000), run: async () => {} },
    { site: "animeify", timeoutMs: sourceAvailabilityJobTimeoutMs("animeify", 4_000), run: async () => {} },
    { site: "anifox", timeoutMs: sourceAvailabilityJobTimeoutMs("anifox", 18_000), run: async () => {} },
    { site: "animedar", timeoutMs: sourceAvailabilityJobTimeoutMs("animedar", 11_000), run: async () => {} },
    { site: "anime4up2", timeoutMs: sourceAvailabilityJobTimeoutMs("anime4up2", 7_000), run: async () => {} },
  ]);

  // The nine enabled providers fit in one 10-worker wave; the scan keeps 12s
  // for catalog/cache setup and response delivery after the 50s worst case.
  assert.equal(sourceAvailabilityScanTimeoutMs(jobs, SOURCE_AVAILABILITY_CONCURRENCY, 12_000), 62_000);
});
