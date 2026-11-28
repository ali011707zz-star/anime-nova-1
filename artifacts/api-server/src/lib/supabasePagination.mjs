/**
 * Bounded pagination collector for Supabase PostgREST / PostgreSQL queries.
 * Solves both the default 200-row sbSelect cap and PostgREST 1000-row db-max-rows limit
 * while enforcing a strict upper bound (maxRows) to prevent unbounded memory/query DoS.
 */
export const DEFAULT_PAGE_SIZE = 500;
export const DEFAULT_MAX_ROWS = 5000;
export const HARD_MAX_ROWS = 50000;

export async function collectPaginatedRows(
  fetchPage,
  opts = {},
) {
  const pageSize = Math.max(1, Math.min(Number(opts.pageSize) || DEFAULT_PAGE_SIZE, 1000));
  const maxRows = Math.max(1, Math.min(Number(opts.maxRows) || DEFAULT_MAX_ROWS, HARD_MAX_ROWS));
  const maxPages = Math.ceil(maxRows / pageSize) + 1;
  const rows = [];

  for (let page = 0; page < maxPages && rows.length < maxRows; page++) {
    const offset = page * pageSize;
    const remaining = maxRows - rows.length;
    const limit = Math.min(pageSize, remaining);
    const batch = await fetchPage(limit, offset);
    if (!Array.isArray(batch) || batch.length === 0) break;
    rows.push(...batch);
    if (batch.length < limit) break;
  }

  return rows.slice(0, maxRows);
}
