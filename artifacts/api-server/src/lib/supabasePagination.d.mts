export declare const DEFAULT_PAGE_SIZE: number;
export declare const DEFAULT_MAX_ROWS: number;
export declare const HARD_MAX_ROWS: number;

export declare function collectPaginatedRows<T>(
  fetchPage: (limit: number, offset: number) => Promise<T[]>,
  opts?: { pageSize?: number; maxRows?: number },
): Promise<T[]>;
