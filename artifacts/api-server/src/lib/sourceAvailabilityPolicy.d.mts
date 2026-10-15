export interface AvailabilityJob {
  site: string;
  run: () => Promise<unknown>;
}

export const SOURCE_AVAILABILITY_PRIORITY: readonly string[];
export function orderAvailabilityJobs<T extends AvailabilityJob>(jobs: T[]): T[];
export function sourceAvailabilityTimeoutMs(site: string, requestedMs: number): number;
export function sourceFlightKey(cacheKey: string, availabilityOnly: boolean): string;
