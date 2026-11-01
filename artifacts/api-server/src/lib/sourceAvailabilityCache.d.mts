export const SOURCE_AVAILABILITY_CACHE_TTL_MS: number;

export function getSourceAvailabilityCache<T extends object>(
  key: string,
  now?: number,
): T[] | null;

export function setSourceAvailabilityCache<T extends object>(
  key: string,
  rows: readonly T[],
  now?: number,
): void;
