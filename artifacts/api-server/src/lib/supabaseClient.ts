/**
 * supabaseClient.ts — PostgreSQL-native replacement
 * Replaces Supabase REST API calls with direct pg queries.
 * Keeps the same function signatures so all callers work unchanged.
 */

import pg from "pg";

const { Pool } = pg;

let _pool: pg.Pool | null = null;

function getPool(): pg.Pool {
  if (!_pool) {
    const connStr = process.env.DATABASE_URL;
    if (!connStr) throw new Error("DATABASE_URL غير موجود");
    _pool = new Pool({ connectionString: connStr, max: 10 });
  }
  return _pool;
}

export function isSupabaseReady(): boolean {
  return !!process.env.DATABASE_URL;
}

// ── Helpers ───────────────────────────────────────────────────────────────

/**
 * Parse a Supabase-style filter value like `eq.123`, `lt.2024-01-01`, `in.(a,b,c)`, `is.null`
 * and return a SQL fragment + value array starting at $startIdx.
 */
function parseFilter(
  col: string,
  val: string | number | undefined,
  startIdx: number,
): { sql: string; values: any[]; nextIdx: number } {
  if (val === undefined || val === null) {
    return { sql: "", values: [], nextIdx: startIdx };
  }
  const str = String(val);
  const dot = str.indexOf(".");
  if (dot === -1) {
    return { sql: `"${col}" = $${startIdx}`, values: [str], nextIdx: startIdx + 1 };
  }
  const op   = str.slice(0, dot);
  const rest = str.slice(dot + 1);

  switch (op) {
    case "eq":
      if (rest === "null" || rest === "NULL") {
        return { sql: `"${col}" IS NULL`, values: [], nextIdx: startIdx };
      }
      return { sql: `"${col}" = $${startIdx}`, values: [rest], nextIdx: startIdx + 1 };
    case "neq":
      return { sql: `"${col}" != $${startIdx}`, values: [rest], nextIdx: startIdx + 1 };
    case "lt":
      return { sql: `"${col}" < $${startIdx}`, values: [rest], nextIdx: startIdx + 1 };
    case "lte":
      return { sql: `"${col}" <= $${startIdx}`, values: [rest], nextIdx: startIdx + 1 };
    case "gt":
      return { sql: `"${col}" > $${startIdx}`, values: [rest], nextIdx: startIdx + 1 };
    case "gte":
      return { sql: `"${col}" >= $${startIdx}`, values: [rest], nextIdx: startIdx + 1 };
    case "is":
      if (rest === "null" || rest === "NULL") {
        return { sql: `"${col}" IS NULL`, values: [], nextIdx: startIdx };
      }
      return { sql: `"${col}" IS NOT NULL`, values: [], nextIdx: startIdx };
    case "in": {
      // rest looks like "(a,b,c)"
      const inner = rest.replace(/^\(|\)$/g, "");
      if (!inner) return { sql: "FALSE", values: [], nextIdx: startIdx };
      const items = inner.split(",").map((s) => s.trim());
      const placeholders = items.map((_, i) => `$${startIdx + i}`).join(", ");
      return {
        sql: `"${col}" IN (${placeholders})`,
        values: items,
        nextIdx: startIdx + items.length,
      };
    }
    default:
      return { sql: `"${col}" = $${startIdx}`, values: [str], nextIdx: startIdx + 1 };
  }
}

/**
 * Build WHERE + ORDER BY + LIMIT from a Supabase-style filter object.
 * Special keys: "order" (e.g. "created_at.desc"), "limit", "select" (ignored here).
 */
function buildWhere(
  filters: Record<string, string | number | undefined>,
): { where: string; orderBy: string; limit: number | null; values: any[] } {
  const conditions: string[] = [];
  const values: any[] = [];
  let idx = 1;
  let orderBy = "";
  let limit: number | null = null;

  for (const [col, val] of Object.entries(filters)) {
    if (col === "order") {
      // e.g. "created_at.desc" or "watched_at.desc"
      const parts = String(val).split(".");
      const colName = parts[0];
      const dir = (parts[1] || "asc").toUpperCase() === "DESC" ? "DESC" : "ASC";
      orderBy = `ORDER BY "${colName}" ${dir}`;
      continue;
    }
    if (col === "limit") {
      limit = Number(val);
      continue;
    }
    if (col === "select") continue;

    const result = parseFilter(col, val, idx);
    if (result.sql) {
      conditions.push(result.sql);
      values.push(...result.values);
      idx = result.nextIdx;
    }
  }

  const where = conditions.length ? `WHERE ${conditions.join(" AND ")}` : "";
  return { where, orderBy, limit, values };
}

// ── SELECT ────────────────────────────────────────────────────────────────

export async function sbSelect<T = any>(
  table: string,
  filters: Record<string, string | number | undefined> = {},
  opts: { limit?: number; select?: string } = {},
): Promise<T[]> {
  try {
    const pool = getPool();
    const { where, orderBy, limit: filterLimit, values } = buildWhere(filters);
    const effectiveLimit = opts.limit ?? filterLimit ?? 200;
    const cols = opts.select && opts.select !== "*" ? opts.select : "*";
    const sql = `SELECT ${cols} FROM "${table}" ${where} ${orderBy} LIMIT ${effectiveLimit}`;
    const result = await pool.query(sql, values);
    return result.rows as T[];
  } catch (e: any) {
    console.error(`[db] sbSelect "${table}":`, e.message);
    return [];
  }
}

// ── INSERT ────────────────────────────────────────────────────────────────

export async function sbInsert<T = any>(
  table: string,
  row: Record<string, any>,
): Promise<T | null> {
  try {
    const pool = getPool();
    const keys = Object.keys(row);
    const vals = Object.values(row);
    const cols = keys.map((k) => `"${k}"`).join(", ");
    const placeholders = keys.map((_, i) => `$${i + 1}`).join(", ");
    const sql = `INSERT INTO "${table}" (${cols}) VALUES (${placeholders}) RETURNING *`;
    const result = await pool.query(sql, vals);
    return (result.rows[0] ?? null) as T | null;
  } catch (e: any) {
    console.error(`[db] sbInsert "${table}":`, e.message);
    return null;
  }
}

// ── UPSERT ────────────────────────────────────────────────────────────────

export async function sbUpsert<T = any>(
  table: string,
  row: Record<string, any>,
  onConflict?: string,
): Promise<T | null> {
  try {
    const pool = getPool();
    const keys = Object.keys(row);
    const vals = Object.values(row);
    const cols = keys.map((k) => `"${k}"`).join(", ");
    const placeholders = keys.map((_, i) => `$${i + 1}`).join(", ");

    let conflictClause = "";
    if (onConflict) {
      const conflictCols = onConflict
        .split(",")
        .map((c) => `"${c.trim()}"`)
        .join(", ");
      const updateCols = keys
        .filter((k) => !onConflict.split(",").map((c) => c.trim()).includes(k))
        .map((k) => `"${k}" = EXCLUDED."${k}"`)
        .join(", ");
      conflictClause = updateCols
        ? `ON CONFLICT (${conflictCols}) DO UPDATE SET ${updateCols}`
        : `ON CONFLICT (${conflictCols}) DO NOTHING`;
    }

    const sql = `INSERT INTO "${table}" (${cols}) VALUES (${placeholders}) ${conflictClause} RETURNING *`;
    const result = await pool.query(sql, vals);
    return (result.rows[0] ?? null) as T | null;
  } catch (e: any) {
    console.error(`[db] sbUpsert "${table}":`, e.message);
    return null;
  }
}

// ── PATCH (UPDATE) ────────────────────────────────────────────────────────

export async function sbPatch<T = any>(
  table: string,
  filter: Record<string, string | number>,
  data: Record<string, any>,
): Promise<T | null> {
  try {
    const pool = getPool();
    const dataKeys = Object.keys(data);
    const dataVals = Object.values(data);

    if (!dataKeys.length) return null;

    const setClauses = dataKeys.map((k, i) => `"${k}" = $${i + 1}`).join(", ");
    const startIdx = dataKeys.length + 1;

    const filterStr = Object.entries(filter)
      .map(([col, val]) => parseFilter(col, val, startIdx))
      .filter((r) => r.sql)
      .map((r, _, arr) => r.sql)
      .join(" AND ");

    const filterVals: any[] = [];
    let idx = startIdx;
    for (const [col, val] of Object.entries(filter)) {
      const r = parseFilter(col, val, idx);
      filterVals.push(...r.values);
      idx = r.nextIdx;
    }

    const whereClause = filterStr ? `WHERE ${filterStr}` : "";
    const sql = `UPDATE "${table}" SET ${setClauses} ${whereClause} RETURNING *`;
    const result = await pool.query(sql, [...dataVals, ...filterVals]);
    return (result.rows[0] ?? null) as T | null;
  } catch (e: any) {
    console.error(`[db] sbPatch "${table}":`, e.message);
    return null;
  }
}

// ── DELETE ────────────────────────────────────────────────────────────────

export async function sbDelete(
  table: string,
  filter: Record<string, string | number>,
): Promise<boolean> {
  try {
    const pool = getPool();
    const { where, values } = buildWhere(
      filter as Record<string, string | number | undefined>,
    );
    const sql = `DELETE FROM "${table}" ${where}`;
    await pool.query(sql, values);
    return true;
  } catch (e: any) {
    console.error(`[db] sbDelete "${table}":`, e.message);
    return false;
  }
}

// ── CHECK ─────────────────────────────────────────────────────────────────

export async function checkSupabase(): Promise<boolean> {
  try {
    const pool = getPool();
    await pool.query("SELECT 1");
    return true;
  } catch { return false; }
}
