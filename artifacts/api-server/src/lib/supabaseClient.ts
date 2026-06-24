/**
 * supabaseClient.ts — PostgreSQL client (Replit Database)
 * Drop-in replacement for Supabase REST API using pg directly.
 * Uses DATABASE_URL from Replit's provisioned PostgreSQL.
 */

import pg from "pg";

const { Pool } = pg;

const DATABASE_URL = process.env.DATABASE_URL || "";

export const isSupabaseReady = !!DATABASE_URL;

let _pool: InstanceType<typeof Pool> | null = null;

function getPool(): InstanceType<typeof Pool> {
  if (!_pool) {
    _pool = new Pool({
      connectionString: DATABASE_URL,
      ssl: DATABASE_URL.includes("localhost") || DATABASE_URL.includes("127.0.0.1")
        ? false
        : { rejectUnauthorized: false },
      max: 10,
      idleTimeoutMillis: 30_000,
      connectionTimeoutMillis: 10_000,
    });
    _pool.on("error", (err) => {
      console.error("[db] Pool error:", err.message);
    });
    console.log("[db] ✅ PostgreSQL pool جاهز");
  }
  return _pool;
}

if (isSupabaseReady) {
  getPool();
} else {
  console.warn("[db] ⚠️ DATABASE_URL غير موجود — قاعدة البيانات معطّلة");
}

/**
 * Parse a PostgREST-style filter value into SQL fragment.
 * e.g. "eq.foo" → `= 'foo'`
 *      "lt.2024-01-01T00:00:00Z" → `< '2024-...'`
 *      "is.null" → `IS NULL`
 *      "ilike.*foo*" → `ILIKE '%foo%'`
 */
function parseFilter(col: string, val: string): { sql: string; params: any[] } {
  const dot = val.indexOf(".");
  const op  = dot === -1 ? val : val.slice(0, dot);
  const raw = dot === -1 ? ""  : val.slice(dot + 1);

  switch (op) {
    case "eq":   return { sql: `"${col}" = $PARAM`, params: [raw] };
    case "neq":  return { sql: `"${col}" != $PARAM`, params: [raw] };
    case "lt":   return { sql: `"${col}" < $PARAM`, params: [raw] };
    case "lte":  return { sql: `"${col}" <= $PARAM`, params: [raw] };
    case "gt":   return { sql: `"${col}" > $PARAM`, params: [raw] };
    case "gte":  return { sql: `"${col}" >= $PARAM`, params: [raw] };
    case "is":   return raw === "null"
                   ? { sql: `"${col}" IS NULL`, params: [] }
                   : { sql: `"${col}" IS NOT NULL`, params: [] };
    case "in": {
      const items = raw.replace(/^\(/, "").replace(/\)$/, "").split(",").map(s => s.trim());
      return { sql: `"${col}" = ANY($PARAM::text[])`, params: [items] };
    }
    case "ilike": {
      const likeVal = raw.replace(/\*/g, "%");
      return { sql: `"${col}" ILIKE $PARAM`, params: [likeVal] };
    }
    default:
      return { sql: `"${col}" = $PARAM`, params: [val] };
  }
}

const SKIP_KEYS = new Set(["order", "limit", "offset", "select"]);

function buildWhereClause(
  params: Record<string, string>,
  startIdx: number
): { where: string; values: any[]; nextIdx: number } {
  const clauses: string[] = [];
  const values: any[] = [];
  let idx = startIdx;

  for (const [col, val] of Object.entries(params)) {
    if (SKIP_KEYS.has(col)) continue;
    const { sql, params: ps } = parseFilter(col, val);
    clauses.push(sql.replace("$PARAM", `$${idx}`));
    values.push(...ps);
    if (ps.length > 0) idx++;
  }

  return {
    where: clauses.length ? `WHERE ${clauses.join(" AND ")}` : "",
    values,
    nextIdx: idx,
  };
}

function buildOrderClause(order?: string): string {
  if (!order) return "";
  const parts = order.split(",").map(part => {
    const segs = part.trim().split(".");
    const col  = segs[0];
    const dir  = segs[1]?.toUpperCase() === "DESC" ? "DESC" : "ASC";
    return `"${col}" ${dir}`;
  });
  return `ORDER BY ${parts.join(", ")}`;
}

/** SELECT rows */
export async function sbSelect<T = any>(
  table: string,
  params: Record<string, string> = {},
  opts: { limit?: number; select?: string } = {},
): Promise<T[]> {
  if (!isSupabaseReady) return [];
  try {
    const pool = getPool();
    const { where, values } = buildWhereClause(params, 1);
    const order  = buildOrderClause(params.order);
    const select = opts.select ? opts.select.split(",").map(c => `"${c.trim()}"`).join(", ") : "*";
    const limit  = opts.limit  ? `LIMIT ${opts.limit}`  : "";
    const offset = params.offset ? `OFFSET ${params.offset}` : "";

    const sql = `SELECT ${select} FROM "${table}" ${where} ${order} ${limit} ${offset}`.trim();
    const result = await pool.query(sql, values);
    return result.rows as T[];
  } catch (e: any) {
    console.error(`[db] sbSelect "${table}":`, e.message);
    return [];
  }
}

/** INSERT a single row, returning the inserted row */
export async function sbInsert<T = any>(
  table: string,
  row: Record<string, any>,
): Promise<T | null> {
  if (!isSupabaseReady) return null;
  try {
    const pool = getPool();
    const keys   = Object.keys(row);
    const cols   = keys.map(k => `"${k}"`).join(", ");
    const placeholders = keys.map((_, i) => `$${i + 1}`).join(", ");
    const vals   = keys.map(k => row[k]);

    const sql = `INSERT INTO "${table}" (${cols}) VALUES (${placeholders}) RETURNING *`;
    const result = await pool.query(sql, vals);
    return (result.rows[0] ?? null) as T | null;
  } catch (e: any) {
    console.error(`[db] sbInsert "${table}":`, e.message);
    return null;
  }
}

/** UPSERT — INSERT ON CONFLICT DO UPDATE */
export async function sbUpsert<T = any>(
  table: string,
  row: Record<string, any>,
  onConflict?: string,
): Promise<T | null> {
  if (!isSupabaseReady) return null;
  try {
    const pool = getPool();
    const keys   = Object.keys(row);
    const cols   = keys.map(k => `"${k}"`).join(", ");
    const placeholders = keys.map((_, i) => `$${i + 1}`).join(", ");
    const vals   = keys.map(k => row[k]);

    let conflictClause = "";
    if (onConflict) {
      const conflictCols = onConflict.split(",").map(c => `"${c.trim()}"`).join(", ");
      const updateCols   = keys
        .filter(k => !onConflict.split(",").map(c => c.trim()).includes(k))
        .map(k => `"${k}" = EXCLUDED."${k}"`);
      conflictClause = updateCols.length
        ? `ON CONFLICT (${conflictCols}) DO UPDATE SET ${updateCols.join(", ")}`
        : `ON CONFLICT (${conflictCols}) DO NOTHING`;
    } else {
      conflictClause = "ON CONFLICT DO NOTHING";
    }

    const sql = `INSERT INTO "${table}" (${cols}) VALUES (${placeholders}) ${conflictClause} RETURNING *`;
    const result = await pool.query(sql, vals);
    return (result.rows[0] ?? null) as T | null;
  } catch (e: any) {
    console.error(`[db] sbUpsert "${table}":`, e.message);
    return null;
  }
}

/** UPDATE rows matching filter */
export async function sbPatch<T = any>(
  table: string,
  filter: Record<string, string>,
  data: Record<string, any>,
): Promise<T | null> {
  if (!isSupabaseReady) return null;
  try {
    const pool = getPool();
    const dataKeys = Object.keys(data);
    const dataVals = dataKeys.map(k => data[k]);

    const setClauses = dataKeys.map((k, i) => `"${k}" = $${i + 1}`).join(", ");
    const { where, values: whereVals } = buildWhereClause(filter, dataKeys.length + 1);

    const sql = `UPDATE "${table}" SET ${setClauses} ${where} RETURNING *`;
    const result = await pool.query(sql, [...dataVals, ...whereVals]);
    return (result.rows[0] ?? null) as T | null;
  } catch (e: any) {
    console.error(`[db] sbPatch "${table}":`, e.message);
    return null;
  }
}

/** DELETE rows matching filter */
export async function sbDelete(
  table: string,
  filter: Record<string, string>,
): Promise<boolean> {
  if (!isSupabaseReady) return false;
  try {
    const pool = getPool();
    const { where, values } = buildWhereClause(filter, 1);
    if (!where) {
      console.warn(`[db] sbDelete "${table}" called with no filter — skipping`);
      return false;
    }
    const sql = `DELETE FROM "${table}" ${where}`;
    await pool.query(sql, values);
    return true;
  } catch (e: any) {
    console.error(`[db] sbDelete "${table}":`, e.message);
    return false;
  }
}

/** فحص الاتصال بقاعدة البيانات */
export async function checkSupabase(): Promise<boolean> {
  if (!isSupabaseReady) return false;
  try {
    const pool = getPool();
    await pool.query("SELECT 1");
    return true;
  } catch { return false; }
}
