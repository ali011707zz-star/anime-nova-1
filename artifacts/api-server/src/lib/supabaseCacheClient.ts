/**
 * supabaseCacheClient.ts — Direct PostgreSQL cache client (Replit native DB)
 * Replaces the old Supabase REST cache proxy. Same API surface preserved.
 */

import pg from "pg";

const { Pool } = pg;

let _pool: pg.Pool | null = null;

function getPool(): pg.Pool {
  if (!_pool) {
    if (!process.env.DATABASE_URL) throw new Error("DATABASE_URL is not set");
    _pool = new Pool({ connectionString: process.env.DATABASE_URL });
  }
  return _pool;
}

export const isCacheDbReady = !!process.env.DATABASE_URL;

/** Parse Supabase-style filter params → SQL WHERE + values */
function parseFilters(
  params: Record<string, string>,
  startIdx = 1,
): { where: string; values: any[] } {
  const clauses: string[] = [];
  const values: any[] = [];
  let idx = startIdx;
  for (const [col, expr] of Object.entries(params)) {
    const dot = expr.indexOf(".");
    if (dot === -1) continue;
    const op  = expr.slice(0, dot);
    const val = expr.slice(dot + 1);
    let sqlOp: string;
    switch (op) {
      case "eq":  sqlOp = "=";  break;
      case "lt":  sqlOp = "<";  break;
      case "lte": sqlOp = "<="; break;
      case "gt":  sqlOp = ">";  break;
      case "gte": sqlOp = ">="; break;
      default:    sqlOp = "=";  break;
    }
    clauses.push(`"${col}" ${sqlOp} $${idx}`);
    values.push(val);
    idx++;
  }
  return { where: clauses.length ? "WHERE " + clauses.join(" AND ") : "", values };
}

/** SELECT rows from a cache table */
export async function cacheSelect<T = any>(
  table: string,
  params: Record<string, string> = {},
  opts: { limit?: number } = {},
): Promise<T[]> {
  if (!isCacheDbReady) return [];
  try {
    const pool = getPool();
    const { where, values } = parseFilters(params);
    const limitClause = opts.limit ? `LIMIT ${opts.limit}` : "";
    const res = await pool.query(`SELECT * FROM "${table}" ${where} ${limitClause}`.trim(), values);
    return res.rows as T[];
  } catch { return []; }
}

/** UPSERT row in cache table */
export async function cacheUpsert<T = any>(
  table: string,
  row: Record<string, any>,
  onConflict?: string,
): Promise<T | null> {
  if (!isCacheDbReady) return null;
  try {
    const pool = getPool();
    const cols = Object.keys(row);
    const vals = Object.values(row);
    const placeholders = cols.map((_, i) => `$${i + 1}`).join(", ");
    const colNames = cols.map(c => `"${c}"`).join(", ");
    let conflictClause = "DO NOTHING";
    if (onConflict) {
      const updateCols = cols.filter(c => c !== onConflict);
      if (updateCols.length > 0) {
        conflictClause = `DO UPDATE SET ${updateCols.map(c => `"${c}" = EXCLUDED."${c}"`).join(", ")}`;
      }
    }
    const conflict = onConflict ? `("${onConflict}")` : "";
    const sql = `INSERT INTO "${table}" (${colNames}) VALUES (${placeholders}) ON CONFLICT ${conflict} ${conflictClause} RETURNING *`;
    const res = await pool.query(sql, vals);
    return (res.rows[0] ?? null) as T | null;
  } catch { return null; }
}

/** INSERT single row in cache table */
export async function cacheInsert<T = any>(
  table: string,
  row: Record<string, any>,
): Promise<T | null> {
  if (!isCacheDbReady) return null;
  try {
    const pool = getPool();
    const cols = Object.keys(row);
    const vals = Object.values(row);
    const placeholders = cols.map((_, i) => `$${i + 1}`).join(", ");
    const colNames = cols.map(c => `"${c}"`).join(", ");
    const sql = `INSERT INTO "${table}" (${colNames}) VALUES (${placeholders}) RETURNING *`;
    const res = await pool.query(sql, vals);
    return (res.rows[0] ?? null) as T | null;
  } catch { return null; }
}

/** DELETE rows from cache table */
export async function cacheDelete(
  table: string,
  filter: Record<string, string>,
): Promise<boolean> {
  if (!isCacheDbReady) return false;
  try {
    const pool = getPool();
    const { where, values } = parseFilters(filter);
    if (!where) return false;
    await pool.query(`DELETE FROM "${table}" ${where}`, values);
    return true;
  } catch { return false; }
}

/** PATCH rows in cache table */
export async function cachePatch<T = any>(
  table: string,
  filter: Record<string, string>,
  data: Record<string, any>,
): Promise<T | null> {
  if (!isCacheDbReady) return null;
  try {
    const pool = getPool();
    const cols = Object.keys(data);
    const vals = Object.values(data);
    const setClauses = cols.map((c, i) => `"${c}" = $${i + 1}`).join(", ");
    const { where, values: filterVals } = parseFilters(filter, vals.length + 1);
    const sql = `UPDATE "${table}" SET ${setClauses} ${where} RETURNING *`;
    const res = await pool.query(sql, [...vals, ...filterVals]);
    return (res.rows[0] ?? null) as T | null;
  } catch { return null; }
}

if (isCacheDbReady) {
  console.log("[cacheClient] ✅ PostgreSQL (Replit DB) جاهز للكاش");
} else {
  console.warn("[cacheClient] ⚠️ DATABASE_URL غير موجود — الكاش معطّل");
}
