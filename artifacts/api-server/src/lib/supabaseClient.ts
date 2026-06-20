/**
 * supabaseClient.ts — Direct PostgreSQL client (Replit native DB)
 * Replaces the old Supabase REST API proxy. Same API surface preserved:
 * sbSelect / sbInsert / sbUpsert / sbPatch / sbDelete
 */

import pg from "pg";

const { Pool } = pg;

let _pool: pg.Pool | null = null;

function getPool(): pg.Pool {
  if (!_pool) {
    if (!process.env.DATABASE_URL) {
      throw new Error("DATABASE_URL is not set");
    }
    _pool = new Pool({ connectionString: process.env.DATABASE_URL });
  }
  return _pool;
}

/** Convert a Supabase-style filter object to SQL WHERE clause + values */
function parseFilters(
  params: Record<string, string>,
  startIdx = 1,
): { where: string; values: any[] } {
  const clauses: string[] = [];
  const values: any[] = [];
  let idx = startIdx;

  for (const [col, expr] of Object.entries(params)) {
    if (col === "select" || col === "order") continue;
    // expr format: "eq.value", "lt.value", "gt.value", "neq.value"
    const dot = expr.indexOf(".");
    if (dot === -1) continue;
    const op = expr.slice(0, dot);
    const val = expr.slice(dot + 1);

    let sqlOp: string;
    switch (op) {
      case "eq":  sqlOp = "=";  break;
      case "neq": sqlOp = "<>"; break;
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

  const where = clauses.length ? "WHERE " + clauses.join(" AND ") : "";
  return { where, values };
}

/** Parse order param like "watched_at.desc" → ORDER BY "watched_at" DESC */
function parseOrder(params: Record<string, string>): string {
  const orderVal = params["order"];
  if (!orderVal) return "";
  const parts = orderVal.split(".");
  if (parts.length < 2) return "";
  const col = parts[0];
  const dir = parts[1].toUpperCase() === "DESC" ? "DESC" : "ASC";
  return `ORDER BY "${col}" ${dir}`;
}

/** SELECT rows from a table */
export async function sbSelect<T = any>(
  table: string,
  params: Record<string, string> = {},
  opts: { limit?: number } = {},
): Promise<T[]> {
  try {
    const pool = getPool();
    const { where, values } = parseFilters(params);
    const order = parseOrder(params);
    const limitClause = opts.limit ? `LIMIT ${opts.limit}` : "";
    const sql = `SELECT * FROM "${table}" ${where} ${order} ${limitClause}`.trim();
    const res = await pool.query(sql, values);
    return res.rows as T[];
  } catch (e: any) {
    console.error(`[db] sbSelect "${table}" error:`, e.message);
    return [];
  }
}

/** INSERT a single row, returning the inserted row */
export async function sbInsert<T = any>(
  table: string,
  row: Record<string, any>,
): Promise<T | null> {
  try {
    const pool = getPool();
    const cols = Object.keys(row);
    const vals = Object.values(row);
    const placeholders = cols.map((_, i) => `$${i + 1}`).join(", ");
    const colNames = cols.map(c => `"${c}"`).join(", ");
    const sql = `INSERT INTO "${table}" (${colNames}) VALUES (${placeholders}) RETURNING *`;
    const res = await pool.query(sql, vals);
    return (res.rows[0] ?? null) as T | null;
  } catch (e: any) {
    console.error(`[db] sbInsert "${table}" error:`, e.message);
    return null;
  }
}

/** UPSERT — INSERT ON CONFLICT DO UPDATE */
export async function sbUpsert<T = any>(
  table: string,
  row: Record<string, any>,
  onConflict?: string,
): Promise<T | null> {
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
        const updates = updateCols.map(c => `"${c}" = EXCLUDED."${c}"`).join(", ");
        conflictClause = `DO UPDATE SET ${updates}`;
      }
    }

    const sql = `INSERT INTO "${table}" (${colNames}) VALUES (${placeholders}) ON CONFLICT ${onConflict ? `("${onConflict}")` : ""} ${conflictClause} RETURNING *`;
    const res = await pool.query(sql, vals);
    return (res.rows[0] ?? null) as T | null;
  } catch (e: any) {
    console.error(`[db] sbUpsert "${table}" error:`, e.message);
    return null;
  }
}

/** UPDATE rows matching filter, returning the first updated row */
export async function sbPatch<T = any>(
  table: string,
  filter: Record<string, string>,
  data: Record<string, any>,
): Promise<T | null> {
  try {
    const pool = getPool();
    const cols = Object.keys(data);
    const vals = Object.values(data);
    const setClauses = cols.map((c, i) => `"${c}" = $${i + 1}`).join(", ");

    const { where, values: filterVals } = parseFilters(filter, vals.length + 1);
    const allVals = [...vals, ...filterVals];

    const sql = `UPDATE "${table}" SET ${setClauses} ${where} RETURNING *`;
    const res = await pool.query(sql, allVals);
    return (res.rows[0] ?? null) as T | null;
  } catch (e: any) {
    console.error(`[db] sbPatch "${table}" error:`, e.message);
    return null;
  }
}

/** DELETE rows matching filter */
export async function sbDelete(
  table: string,
  filter: Record<string, string>,
): Promise<boolean> {
  try {
    const pool = getPool();
    const { where, values } = parseFilters(filter);
    if (!where) {
      console.warn(`[db] sbDelete "${table}" called with no filters — skipping`);
      return false;
    }
    const sql = `DELETE FROM "${table}" ${where}`;
    await pool.query(sql, values);
    return true;
  } catch (e: any) {
    console.error(`[db] sbDelete "${table}" error:`, e.message);
    return false;
  }
}

/** Compatibility: always ready since we have a real DB */
export const isSupabaseReady = true;

/** Check DB connectivity */
export async function checkSupabase(): Promise<boolean> {
  try {
    const pool = getPool();
    await pool.query("SELECT 1");
    return true;
  } catch { return false; }
}
