/**
 * supabaseClient.ts — PostgreSQL client (migrated from Supabase REST to direct pg)
 * Maintains the same API surface as the old Supabase REST client so no other files need changing.
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

/**
 * Parse a Supabase-style filter like { email: "eq.foo@bar.com", anime_id: "eq.5" }
 * into a SQL WHERE clause and values array.
 * Supported operators: eq, neq, lt, gt, lte, gte, is, in, like, ilike
 */
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
        if (val === "null") {
          conditions.push(`"${col}" IS NULL`);
        } else {
          conditions.push(`"${col}" = $${idx++}`);
          values.push(val);
        }
        break;
      case "neq":
        conditions.push(`"${col}" != $${idx++}`);
        values.push(val);
        break;
      case "lt":
        conditions.push(`"${col}" < $${idx++}`);
        values.push(val);
        break;
      case "lte":
        conditions.push(`"${col}" <= $${idx++}`);
        values.push(val);
        break;
      case "gt":
        conditions.push(`"${col}" > $${idx++}`);
        values.push(val);
        break;
      case "gte":
        conditions.push(`"${col}" >= $${idx++}`);
        values.push(val);
        break;
      case "is":
        if (val === "null") conditions.push(`"${col}" IS NULL`);
        else if (val === "true") conditions.push(`"${col}" IS TRUE`);
        else if (val === "false") conditions.push(`"${col}" IS FALSE`);
        break;
      case "in": {
        const items = val.replace(/^\(|\)$/g, "").split(",").map((s) => s.trim());
        if (items.length === 0) {
          conditions.push("FALSE");
          break;
        }
        const placeholders = items.map(() => `$${idx++}`).join(",");
        conditions.push(`"${col}" IN (${placeholders})`);
        values.push(...items);
        break;
      }
      case "like":
        conditions.push(`"${col}" LIKE $${idx++}`);
        values.push(val);
        break;
      case "ilike":
        conditions.push(`"${col}" ILIKE $${idx++}`);
        values.push(val);
        break;
    }
  }

  return {
    clause: conditions.length ? `WHERE ${conditions.join(" AND ")}` : "",
    values,
  };
}

/**
 * Parse an ORDER clause from filter["order"] like "created_at.desc" or "watched_at.desc"
 */
function parseOrder(filter: Record<string, string>): string {
  const raw = filter["order"];
  if (!raw) return "";
  const parts = raw.split(".");
  const col = parts[0];
  const dir = parts[1]?.toUpperCase() === "DESC" ? "DESC" : "ASC";
  return `ORDER BY "${col}" ${dir}`;
}

/** SELECT rows from a table */
export async function sbSelect<T = any>(
  table: string,
  params: Record<string, string> = {},
  opts: { limit?: number } = {}
): Promise<T[]> {
  try {
    const db = getPool();
    const { clause, values } = parseFilter(params);
    const order = parseOrder(params);
    const limitClause = opts.limit ? `LIMIT ${opts.limit}` : "";
    const sql = `SELECT * FROM "${table}" ${clause} ${order} ${limitClause}`.trim();
    const result = await db.query(sql, values);
    return result.rows as T[];
  } catch (err) {
    console.error(`[pgClient] sbSelect "${table}" error:`, err);
    return [];
  }
}

/** INSERT a single row, returning the inserted row */
export async function sbInsert<T = any>(
  table: string,
  row: Record<string, any>
): Promise<T | null> {
  try {
    const db = getPool();
    const cols = Object.keys(row);
    const vals = Object.values(row);
    const placeholders = vals.map((_, i) => `$${i + 1}`).join(", ");
    const colNames = cols.map((c) => `"${c}"`).join(", ");
    const sql = `INSERT INTO "${table}" (${colNames}) VALUES (${placeholders}) RETURNING *`;
    const result = await db.query(sql, vals);
    return (result.rows[0] as T) ?? null;
  } catch (err) {
    console.error(`[pgClient] sbInsert "${table}" error:`, err);
    return null;
  }
}

/** UPSERT — INSERT with ON CONFLICT DO UPDATE, returning the row */
export async function sbUpsert<T = any>(
  table: string,
  row: Record<string, any>,
  onConflict?: string
): Promise<T | null> {
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
  } catch (err) {
    console.error(`[pgClient] sbUpsert "${table}" error:`, err);
    return null;
  }
}

/** UPDATE rows matching filter, returning the first updated row */
export async function sbPatch<T = any>(
  table: string,
  filter: Record<string, string>,
  data: Record<string, any>
): Promise<T | null> {
  try {
    const db = getPool();
    const dataKeys = Object.keys(data);
    const dataVals = Object.values(data);

    const setClauses = dataKeys.map((k, i) => `"${k}" = $${i + 1}`).join(", ");
    const { clause, values: filterVals } = parseFilter(filter, dataKeys.length + 1);

    const sql = `UPDATE "${table}" SET ${setClauses} ${clause} RETURNING *`;
    const result = await db.query(sql, [...dataVals, ...filterVals]);
    return (result.rows[0] as T) ?? null;
  } catch (err) {
    console.error(`[pgClient] sbPatch "${table}" error:`, err);
    return null;
  }
}

/** DELETE rows matching filter */
export async function sbDelete(
  table: string,
  filter: Record<string, string>
): Promise<boolean> {
  try {
    const db = getPool();
    const { clause, values } = parseFilter(filter);
    const sql = `DELETE FROM "${table}" ${clause}`;
    await db.query(sql, values);
    return true;
  } catch (err) {
    console.error(`[pgClient] sbDelete "${table}" error:`, err);
    return false;
  }
}

export const isSupabaseReady = true;
