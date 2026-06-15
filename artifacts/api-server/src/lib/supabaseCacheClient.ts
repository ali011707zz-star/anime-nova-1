/**
 * supabaseCacheClient.ts — PostgreSQL cache client (migrated from Supabase REST to direct pg)
 * Uses the same DATABASE_URL as the rest of the app.
 * Maintains the same API surface so sourceCache.ts needs no changes.
 */

import pg from "pg";

const { Pool } = pg;

let pool: pg.Pool | null = null;

function getPool(): pg.Pool {
  if (!pool) {
    pool = new Pool({ connectionString: process.env.DATABASE_URL });
  }
  return pool;
}

export const isCacheDbReady = !!process.env.DATABASE_URL;

function parseFilter(
  filter: Record<string, string>,
  startIdx = 1
): { clause: string; values: any[] } {
  const conditions: string[] = [];
  const values: any[] = [];
  let idx = startIdx;
  const skipKeys = new Set(["order", "limit", "offset", "select"]);

  for (const [col, raw] of Object.entries(filter)) {
    if (skipKeys.has(col)) continue;
    const dotIdx = raw.indexOf(".");
    if (dotIdx === -1) continue;
    const op = raw.slice(0, dotIdx);
    const val = raw.slice(dotIdx + 1);
    switch (op) {
      case "eq":
        if (val === "null") conditions.push(`"${col}" IS NULL`);
        else { conditions.push(`"${col}" = $${idx++}`); values.push(val); }
        break;
      case "lt": conditions.push(`"${col}" < $${idx++}`); values.push(val); break;
      case "lte": conditions.push(`"${col}" <= $${idx++}`); values.push(val); break;
      case "gt": conditions.push(`"${col}" > $${idx++}`); values.push(val); break;
      case "gte": conditions.push(`"${col}" >= $${idx++}`); values.push(val); break;
    }
  }
  return { clause: conditions.length ? `WHERE ${conditions.join(" AND ")}` : "", values };
}

/** SELECT rows from a cache table */
export async function cacheSelect<T = any>(
  table: string,
  params: Record<string, string> = {},
  opts: { limit?: number } = {}
): Promise<T[]> {
  if (!isCacheDbReady) return [];
  try {
    const db = getPool();
    const { clause, values } = parseFilter(params);
    const limitClause = opts.limit ? `LIMIT ${opts.limit}` : "";
    const sql = `SELECT * FROM "${table}" ${clause} ${limitClause}`.trim();
    const result = await db.query(sql, values);
    return result.rows as T[];
  } catch { return []; }
}

/** UPSERT row in cache table */
export async function cacheUpsert<T = any>(
  table: string,
  row: Record<string, any>,
  onConflict?: string
): Promise<T | null> {
  if (!isCacheDbReady) return null;
  try {
    const db = getPool();
    const cols = Object.keys(row);
    const vals = Object.values(row);
    const placeholders = vals.map((_, i) => `$${i + 1}`).join(", ");
    const colNames = cols.map((c) => `"${c}"`).join(", ");

    let conflictClause = "DO NOTHING";
    if (onConflict) {
      const conflictCols = onConflict.split(",").map((c) => `"${c.trim()}"`).join(", ");
      const updateCols = cols
        .filter((c) => !onConflict.split(",").map((x) => x.trim()).includes(c))
        .map((c) => `"${c}" = EXCLUDED."${c}"`);
      conflictClause = updateCols.length
        ? `(${conflictCols}) DO UPDATE SET ${updateCols.join(", ")}`
        : `(${conflictCols}) DO NOTHING`;
    }

    const sql = `INSERT INTO "${table}" (${colNames}) VALUES (${placeholders}) ON CONFLICT ${conflictClause} RETURNING *`;
    const result = await db.query(sql, vals);
    return (result.rows[0] as T) ?? null;
  } catch { return null; }
}

/** INSERT single row in cache table */
export async function cacheInsert<T = any>(
  table: string,
  row: Record<string, any>
): Promise<T | null> {
  if (!isCacheDbReady) return null;
  try {
    const db = getPool();
    const cols = Object.keys(row);
    const vals = Object.values(row);
    const placeholders = vals.map((_, i) => `$${i + 1}`).join(", ");
    const colNames = cols.map((c) => `"${c}"`).join(", ");
    const sql = `INSERT INTO "${table}" (${colNames}) VALUES (${placeholders}) RETURNING *`;
    const result = await db.query(sql, vals);
    return (result.rows[0] as T) ?? null;
  } catch { return null; }
}

/** DELETE rows from cache table */
export async function cacheDelete(
  table: string,
  filter: Record<string, string>
): Promise<boolean> {
  if (!isCacheDbReady) return false;
  try {
    const db = getPool();
    const { clause, values } = parseFilter(filter);
    const sql = `DELETE FROM "${table}" ${clause}`;
    await db.query(sql, values);
    return true;
  } catch { return false; }
}

/** PATCH rows in cache table */
export async function cachePatch<T = any>(
  table: string,
  filter: Record<string, string>,
  data: Record<string, any>
): Promise<T | null> {
  if (!isCacheDbReady) return null;
  try {
    const db = getPool();
    const dataKeys = Object.keys(data);
    const dataVals = Object.values(data);
    const setClauses = dataKeys.map((k, i) => `"${k}" = $${i + 1}`).join(", ");
    const { clause, values: filterVals } = parseFilter(filter, dataKeys.length + 1);
    const sql = `UPDATE "${table}" SET ${setClauses} ${clause} RETURNING *`;
    const result = await db.query(sql, [...dataVals, ...filterVals]);
    return (result.rows[0] as T) ?? null;
  } catch { return null; }
}

if (isCacheDbReady) {
  console.log("[cacheClient] ✅ PostgreSQL جاهز للكاش المشترك (L2 cache)");
} else {
  console.warn("[cacheClient] ⚠️ DATABASE_URL غير موجود — الكاش L2 معطّل (L1 ذاكرة فقط)");
}
