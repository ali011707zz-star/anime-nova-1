import test from "node:test";
import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";
import {
  SOURCE_AVAILABILITY_CONCURRENCY,
  sourceAvailabilityJobTimeoutMs,
  sourceAvailabilityScanTimeoutMs,
} from "./sourceAvailabilityPolicy.mjs";

const mobileWatchUrl = new URL("../../../nova-mobile/app/watch.tsx", import.meta.url);
const webWatchUrl = new URL("../../../anime-scraper/src/pages/Watch.tsx", import.meta.url);

function readNumericConstant(source, name) {
  const match = source.match(new RegExp("const " + name + "\\s*=\\s*([\\d_]+);"));
  assert.ok(match, `expected ${name} to be explicitly configured`);
  return Number(match[1].replaceAll("_", ""));
}

test("mobile availability timeout covers the complete API scan and response-close margin", async () => {
  const mobile = await readFile(mobileWatchUrl, "utf8");
  const jobs = [
    ["kawaii", 10_000],
    ["megaplay", 5_000],
    ["animewitcher", 20_000],
    ["sanime", 4_000],
    ["consumet_gogo", 40_000],
    ["anslayer", 15_000],
    ["animeify", 4_000],
    ["anifox", 18_000],
    ["anineko", 25_000],
    ["animekai", 5_000],
  ].map(([site, timeoutMs]) => ({
    site,
    timeoutMs: sourceAvailabilityJobTimeoutMs(site, timeoutMs),
  }));
  const scanDeadline = sourceAvailabilityScanTimeoutMs(
    jobs,
    SOURCE_AVAILABILITY_CONCURRENCY,
  );
  const serverCloseMarginMs = 8_000;

  assert.ok(
    readNumericConstant(mobile, "AVAILABILITY_TIMEOUT_MS") >= scanDeadline + serverCloseMarginMs,
    "mobile must not cancel the SSE scan before the API's calculated deadline",
  );
});

test("web and mobile source requests allow the API's maximum provider budget", async () => {
  const [mobile, web] = await Promise.all([
    readFile(mobileWatchUrl, "utf8"),
    readFile(webWatchUrl, "utf8"),
  ]);

  assert.ok(readNumericConstant(mobile, "SITE_TIMEOUT_MS") >= 60_000);
  assert.match(mobile, /Math\.max\(SITE_TIMEOUT_MS,\s*SITE_TIMEOUT_MAP\[site\]/);
  assert.match(web, /Math\.max\(60_000,\s*SITE_REQUEST_TIMEOUTS\[site\]/);
});
