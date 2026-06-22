/**
 * supabaseClient.ts — PostgreSQL direct client (Replit migration)
 * Replaces the Supabase REST API with direct pg queries using DATABASE_URL.
 * Drop-in replacement: same exported functions (sbSelect, sbInsert, sbUpsert, sbPatch, sbDelete).
 */

import pg from "pg";

const { Pool } = pg;

let _pool: InstanceType<typeof Pool> | null = null;

function getPool(): InstanceType<typeof Pool> {
  if (!_pool) {
    const connStr = process.env.DATABASE_URL;
    if (!connStr) {
      console.warn("[db] ⚠️ DATABASE_URL not set — database disabled");
      return null as any;
    }
    _pool = new Pool({
      connectionString: connStr,
      ssl: connStr.includes("localhost") || connStr.includes("127.0.0.1")
        ? false
        : { rejectUnauthorized: false },
      max: 10,
      idleTimeoutMillis: 30_000,
    });
    _pool.on("error", (err) => {
      console.error("[db] Pool error:", err.message);
    });
    console.log("[db] ✅ PostgreSQL direct connection ready");
  }
  return _pool;
}

export const isSupabaseReady = !!process.env.DATABASE_URL;

// ── Helper: parse Supabase-style filter values ─────────────────────────────
// e.g. "eq.123" → { op: "=", val: "123" }
//      "lt.1234567890" → { op: "<", val: "1234567890" }
//      "is.null" → { op: "IS", val: null }
function parseFilter(v: string): { op: string; val: any } {
  const dot = v.indexOf(".");
  if (dot === -1) return { op: "=", val: v };
  const prefix = v.slice(0, dot);
  const rest   = v.slice(dot + 1);

  switch (prefix) {
    case "eq":  return { op: "=",    val: rest };
    case "neq": return { op: "!=",   val: rest };
    case "lt":  return { op: "<",    val: rest };
    case "lte": return { op: "<=",   val: rest };
    case "gt":  return { op: ">",    val: rest };
    case "gte": return { op: ">=",   val: rest };
    case "is":  return { op: "IS",   val: rest === "null" ? null : rest };
    case "in":  return { op: "IN",   val: rest.replace(/[()]/g, "").split(",") };
    default:    return { op: "=",    val: rest };
  }
}

// ── Build WHERE clause from Supabase-style params ─────────────────────────
function buildWhere(
  params: Record<string, string>,
  startIdx = 1,
): { clause: string; values: any[] } {
  const skip = new Set(["order", "limit", "offset", "select"]);
  const conditions: string[] = [];
  const values: any[] = [];
  let idx = startIdx;

  for (const [col, rawVal] of Object.entries(params)) {
    if (skip.has(col)) continue;
    const { op, val } = parseFilter(rawVal);
    if (op === "IS") {
      conditions.push(`"${col}" IS ${val === null ? "NULL" : `'${val}'`}`);
    } else if (op === "IN" && Array.isArray(val)) {
      const placeholders = val.map(() => `$${idx++}`).join(", ");
      conditions.push(`"${col}" IN (${placeholders})`);
      values.push(...val);
    } else {
      conditions.push(`"${col}" ${op} $${idx++}`);
      values.push(val);
    }
  }

  return {
    clause: conditions.length ? `WHERE ${conditions.join(" AND ")}` : "",
    values,
  };
}

// ── Build ORDER BY from Supabase-style "col.dir" param ────────────────────
function buildOrder(params: Record<string, string>): string {
  if (!params.order) return "";
  const parts = params.order.split(",").map((p) => {
    const [col, dir] = p.trim().split(".");
    return `"${col}" ${dir?.toUpperCase() === "DESC" ? "DESC" : "ASC"}`;
  });
  return `ORDER BY ${parts.join(", ")}`;
}

// ═══════════════════════════════════════════════════════════════════════════
// Public API — mirrors supabaseClient.ts signatures
// ═══════════════════════════════════════════════════════════════════════════

/** SELECT rows from a table */
export async function sbSelect<T = any>(
  table: string,
  params: Record<string, string> = {},
  opts: { limit?: number; select?: string } = {},
): Promise<T[]> {
  const pool = getPool();
  if (!pool) return [];
  try {
    const { clause, values } = buildWhere(params);
    const order = buildOrder(params);
    const limit = opts.limit ? `LIMIT ${opts.limit}` : "";
    const cols  = opts.select || "*";
    const sql   = `SELECT ${cols} FROM "${table}" ${clause} ${order} ${limit}`.trim();
    const result = await pool.query(sql, values);
    return result.rows as T[];
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
  const pool = getPool();
  if (!pool) return null;
  try {
    const cols   = Object.keys(row);
    const vals   = Object.values(row);
    const places = cols.map((_, i) => `$${i + 1}`).join(", ");
    const colStr = cols.map((c) => `"${c}"`).join(", ");
    const sql    = `INSERT INTO "${table}" (${colStr}) VALUES (${places}) RETURNING *`;
    const result = await pool.query(sql, vals);
    return (result.rows[0] ?? null) as T | null;
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
  const pool = getPool();
  if (!pool) return null;
  try {
    const cols   = Object.keys(row);
    const vals   = Object.values(row);
    const places = cols.map((_, i) => `$${i + 1}`).join(", ");
    const colStr = cols.map((c) => `"${c}"`).join(", ");

    let conflictClause = "DO NOTHING";
    if (onConflict) {
      const conflictCols = onConflict.split(",").map((c) => `"${c.trim()}"`).join(", ");
      const updateCols   = cols
        .filter((c) => !onConflict.split(",").map((x) => x.trim()).includes(c))
        .map((c) => `"${c}" = EXCLUDED."${c}"`)
        .join(", ");
      conflictClause = updateCols
        ? `DO UPDATE SET ${updateCols}`
        : "DO NOTHING";
      const sql    = `INSERT INTO "${table}" (${colStr}) VALUES (${places}) ON CONFLICT (${conflictCols}) ${conflictClause} RETURNING *`;
      const result = await pool.query(sql, vals);
      return (result.rows[0] ?? null) as T | null;
    }

    const sql    = `INSERT INTO "${table}" (${colStr}) VALUES (${places}) ON CONFLICT ${conflictClause} RETURNING *`;
    const result = await pool.query(sql, vals);
    return (result.rows[0] ?? null) as T | null;
  } catch (e: any) {
    console.error(`[db] sbUpsert "${table}" error:`, e.message);
    return null;
  }
}

/** UPDATE rows matching filter */
export async function sbPatch<T = any>(
  table: string,
  filter: Record<string, string>,
  data: Record<string, any>,
): Promise<T | null> {
  const pool = getPool();
  if (!pool) return null;
  try {
    const dataCols = Object.keys(data);
    const dataVals = Object.values(data);
    const setStr   = dataCols.map((c, i) => `"${c}" = $${i + 1}`).join(", ");

    const { clause, values } = buildWhere(filter, dataCols.length + 1);
    const sql    = `UPDATE "${table}" SET ${setStr} ${clause} RETURNING *`;
    const result = await pool.query(sql, [...dataVals, ...values]);
    return (result.rows[0] ?? null) as T | null;
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
  const pool = getPool();
  if (!pool) return false;
  try {
    const { clause, values } = buildWhere(filter);
    const sql = `DELETE FROM "${table}" ${clause}`;
    await pool.query(sql, values);
    return true;
  } catch (e: any) {
    console.error(`[db] sbDelete "${table}" error:`, e.message);
    return false;
  }
}

/** Check database connectivity */
export async function checkSupabase(): Promise<boolean> {
  const pool = getPool();
  if (!pool) return false;
  try {
    await pool.query("SELECT 1");
    return true;
  } catch { return false; }
}
