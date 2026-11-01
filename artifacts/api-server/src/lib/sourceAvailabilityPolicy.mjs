export const SOURCE_AVAILABILITY_PRIORITY = Object.freeze([
  "kawaii",
  "megaplay",
  "animewitcher",
  "anifox",
  "sanime",
]);
export const SOURCE_AVAILABILITY_CONCURRENCY = 6;

const MIN_TIMEOUT_MS = Object.freeze({
  // Search + episode-list requests are sequential; the full metadata check can
  // legitimately take several per-request timeouts.
  consumet_gogo: 40_000,
  animeify: 12_000,
  anslayer: 15_000,
  // Both providers can need sequential catalog + episode lookups on a cold
  // cache. Keep their scan budgets above those upstream request windows.
  anifox: 35_000,
  animewitcher: 45_000,
  anineko: 25_000,
  kawaii: 15_000,
  megaplay: 18_000,
  sanime: 24_000,
  animekai: 15_000,
});

export function orderAvailabilityJobs(jobs) {
  const priority = new Map(SOURCE_AVAILABILITY_PRIORITY.map((site, index) => [site, index]));
  return jobs
    .map((job, index) => ({ job, index }))
    .sort((a, b) => {
      const aRank = priority.get(a.job.site) ?? SOURCE_AVAILABILITY_PRIORITY.length;
      const bRank = priority.get(b.job.site) ?? SOURCE_AVAILABILITY_PRIORITY.length;
      return aRank - bRank || a.index - b.index;
    })
    .map(({ job }) => job);
}

export function sourceAvailabilityTimeoutMs(site, requestedMs) {
  const requested = Number.isFinite(requestedMs) && requestedMs > 0 ? requestedMs : 11_000;
  return Math.max(requested, MIN_TIMEOUT_MS[site] ?? 11_000);
}

export function sourceAvailabilityJobTimeoutMs(site, requestedMs) {
  return sourceAvailabilityTimeoutMs(site, requestedMs) + 5_000;
}

/**
 * Bound the whole scan by simulating the same FIFO worker assignment used by
 * runSourceQueue. A fixed route deadline can otherwise expire while valid
 * providers are still waiting behind slower providers in the first wave.
 */
export function sourceAvailabilityScanTimeoutMs(jobs, concurrency, graceMs = 12_000) {
  const workerCount = Math.max(1, Math.floor(Number(concurrency) || 1));
  const workerFinishTimes = Array(workerCount).fill(0);
  for (const job of jobs) {
    let workerIndex = 0;
    for (let index = 1; index < workerFinishTimes.length; index++) {
      if (workerFinishTimes[index] < workerFinishTimes[workerIndex]) workerIndex = index;
    }
    const timeoutMs = Number.isFinite(job.timeoutMs) && job.timeoutMs > 0
      ? job.timeoutMs
      : sourceAvailabilityJobTimeoutMs(job.site, 11_000);
    workerFinishTimes[workerIndex] += timeoutMs;
  }
  return Math.max(...workerFinishTimes, 0) + Math.max(0, Number(graceMs) || 0);
}
