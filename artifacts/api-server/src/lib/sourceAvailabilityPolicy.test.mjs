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
  const jobs = ["anslayer", "sanime", "kawaii", "animewitcher", "megaplay", "anifox"]
    .map(site => ({ site, run: async () => site }));
  assert.deepEqual(
    orderAvailabilityJobs(jobs).map(job => job.site),
    ["kawaii", "megaplay", "animewitcher", "sanime", "anslayer", "anifox"],
  );
});

test("availability checks stay under a bounded outbound concurrency", () => {
  assert.equal(SOURCE_AVAILABILITY_CONCURRENCY, 6);
});

test("availability budgets cannot undercut the providers' request chains", () => {
  assert.equal(sourceAvailabilityTimeoutMs("sanime", 4_000), 24_000);
  assert.equal(sourceAvailabilityTimeoutMs("megaplay", 5_000), 18_000);
  assert.equal(sourceAvailabilityTimeoutMs("animewitcher", 20_000), 24_000);
  assert.equal(sourceAvailabilityTimeoutMs("kawaii", 10_000), 15_000);
  assert.equal(sourceAvailabilityTimeoutMs("anifox", 30_000), 30_000);
  assert.equal(sourceAvailabilityTimeoutMs("unknown", 2_000), 11_000);
});

test("scan deadline covers every FIFO worker wave plus a safety margin", () => {
  const jobs = orderAvailabilityJobs([
    { site: "kawaii", timeoutMs: sourceAvailabilityJobTimeoutMs("kawaii", 10_000), run: async () => {} },
    { site: "megaplay", timeoutMs: sourceAvailabilityJobTimeoutMs("megaplay", 5_000), run: async () => {} },
    { site: "animewitcher", timeoutMs: sourceAvailabilityJobTimeoutMs("animewitcher", 20_000), run: async () => {} },
    { site: "sanime", timeoutMs: sourceAvailabilityJobTimeoutMs("sanime", 4_000), run: async () => {} },
    { site: "consumet_gogo", timeoutMs: sourceAvailabilityJobTimeoutMs("consumet_gogo", 40_000), run: async () => {} },
    { site: "anslayer", timeoutMs: sourceAvailabilityJobTimeoutMs("anslayer", 15_000), run: async () => {} },
    { site: "animeify", timeoutMs: sourceAvailabilityJobTimeoutMs("animeify", 4_000), run: async () => {} },
    { site: "anifox", timeoutMs: sourceAvailabilityJobTimeoutMs("anifox", 18_000), run: async () => {} },
    { site: "anineko", timeoutMs: sourceAvailabilityJobTimeoutMs("anineko", 25_000), run: async () => {} },
    { site: "animekai", timeoutMs: sourceAvailabilityJobTimeoutMs("animekai", 5_000), run: async () => {} },
  ]);

  // The longest worker finishes at 53s; the scan allows 12s for cache/catalog
  // setup and response delivery, instead of truncating the queue at 32s.
  assert.equal(sourceAvailabilityScanTimeoutMs(jobs, 6, 12_000), 65_000);
});
