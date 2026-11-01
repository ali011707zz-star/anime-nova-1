export function filterSourceCatalogServerRows<T extends Record<string, any>>(
  rows: T[],
  provider: string,
  now?: number,
): { servers: Array<T & { needs_recheck?: boolean }>; omittedCount: number };
