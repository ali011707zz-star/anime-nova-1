export const SOURCE_AVAILABILITY_PRIORITY = Object.freeze([
  "kawaii",
  "megaplay",
  "animewitcher",
  "sanime",
]);

const MIN_TIMEOUT_MS = Object.freeze({
  consumet_gogo: 11_000,
  animeify: 12_000,
  anslayer: 15_000,
  anifox: 18_000,
  animewitcher: 24_000,
  anineko: 25_000,
  kawaii: 11_000,
  megaplay: 25_000,
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

export function sourceFlightKey(cacheKey, availabilityOnly) {
  return availabilityOnly ? `${cacheKey}:availability:live` : `${cacheKey}:live`;
}
