/**
 * supabaseClient.ts — Supabase REST API with PostgreSQL fallback
 *
 * When SUPABASE_URL + SUPABASE_SERVICE_KEY are set, uses Supabase REST API.
 * Otherwise, falls back to direct PostgreSQL queries via DATABASE_URL.
 */

import pg from "pg";

const { Pool } = pg;

let _pool: pg.Pool | null = null;

function getPool(): pg.Pool {
  if (!_pool) {
    const url = process.env.DATABASE_URL;
    if (!url) throw new Error("DATABASE_URL not set and Supabase not configured");
    _pool = new Pool({ connectionString: url });
  }
  return _pool;
}

export function isSupabaseReady(): boolean {
  return !!(process.env.SUPABASE_URL && (process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY));
}

function isPgReady(): boolean {
  return !!process.env.DATABASE_URL;
}

// ── Supabase helpers ───────────────────────────────────────────────────────

function getSbUrl(): string {
  const u = process.env.SUPABASE_URL;
  if (!u) throw new Error("SUPABASE_URL not set");
  return u.replace(/\/$/, "");
}

function getSbKey(): string {
  const k = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY;
  if (!k) throw new Error("SUPABASE_SERVICE_KEY not set");
  return k;
}

function sbHeaders(): Record<string, string> {
  return {
    "Content-Type": "application/json",
    "apikey": getSbKey(),
    "Authorization": `Bearer ${getSbKey()}`,
    "Prefer": "return=representation",
  };
}

function buildQuery(params: Record<string, string | number | undefined>): string {
  const parts: string[] = [];
  for (const [k, v] of Object.entries(params)) {
    if (v !== undefined && v !== null) {
      parts.push(`${encodeURIComponent(k)}=${encodeURIComponent(String(v))}`);
    }
  }
  return parts.length ? "?" + parts.join("&") : "";
}

// ── PostgreSQL fallback helpers ────────────────────────────────────────────

/**
 * Parse Supabase-style filter strings like "eq.value", "lt.123", "gte.5"
 * into SQL conditions.
 */
function parseFilter(col: string, val: string): { sql: string; value: any } {
  const dotIdx = val.indexOf(".");
  if (dotIdx === -1) return { sql: `"${col}" = $?`, value: val };

  const op = val.slice(0, dotIdx);
  const raw = val.slice(dotIdx + 1);

  const opMap: Record<string, string> = {
    eq: "=", neq: "!=", lt: "<", lte: "<=", gt: ">", gte: ">=",
    like: "LIKE", ilike: "ILIKE",
  };

  if (op === "is") {
    if (raw === "null") return { sql: `"${col}" IS NULL`, value: undefined };
    if (raw === "not.null") return { sql: `"${col}" IS NOT NULL`, value: undefined };
  }

  const sqlOp = opMap[op] || "=";
  return { sql: `"${col}" ${sqlOp} $?`, value: raw };
}

/**
 * Build a WHERE clause from a filters object (Supabase-style).
 * Returns { where, values } where values are positional params.
 */
function buildWhere(
  filters: Record<string, string | number | undefined>,
  startIdx = 1
): { where: string; values: any[]; nextIdx: number } {
  const SKIP = new Set(["select", "limit", "offset", "order"]);
  const conds: string[] = [];
  const values: any[] = [];
  let idx = startIdx;

  for (const [k, v] of Object.entries(filters)) {
    if (SKIP.has(k) || v === undefined || v === null) continue;
    const strVal = String(v);
    const { sql, value } = parseFilter(k, strVal);
    if (value !== undefined) {
      conds.push(sql.replace("$?", `$${idx}`));
      values.push(value);
      idx++;
    } else {
      conds.push(sql);
    }
  }

  return {
    where: conds.length ? "WHERE " + conds.join(" AND ") : "",
    values,
    nextIdx: idx,
  };
}

// ── SELECT ────────────────────────────────────────────────────────────────

export async function sbSelect<T = any>(
  table: string,
  filters: Record<string, string | number | undefined> = {},
  opts: { limit?: number; select?: string } = {},
): Promise<T[]> {
  // Supabase path
  if (isSupabaseReady()) {
    try {
      const params: Record<string, string | number | undefined> = {
        ...filters,
        select: opts.select || "*",
        limit: opts.limit || filters.limit || 200,
      };
      const url = `${getSbUrl()}/rest/v1/${table}${buildQuery(params)}`;
      const res = await fetch(url, { headers: sbHeaders(), signal: AbortSignal.timeout(10000) });
      if (!res.ok) {
        const err = await res.text();
        console.error(`[sb] sbSelect "${table}" ${res.status}:`, err.slice(0, 200));
        return [];
      }
      return (await res.json()) as T[];
    } catch (e: any) {
      console.error(`[sb] sbSelect "${table}":`, e.message);
      return [];
    }
  }

  // PostgreSQL fallback
  if (!isPgReady()) return [];
  try {
    const cols = opts.select && opts.select !== "*"
      ? opts.select.split(",").map(c => `"${c.trim()}"`).join(", ")
      : "*";
    const limit = opts.limit || (filters.limit as number | undefined) || 200;
    const order = filters.order ? String(filters.order) : null;

    const { where, values, nextIdx } = buildWhere(filters);

    let orderClause = "";
    if (order) {
      const [col, dir] = order.split(".");
      orderClause = `ORDER BY "${col}" ${dir?.toUpperCase() === "DESC" ? "DESC" : "ASC"}`;
    }

    const sql = `SELECT ${cols} FROM "${table}" ${where} ${orderClause} LIMIT $${nextIdx}`;
    values.push(limit);

    const result = await getPool().query(sql, values);
    return result.rows as T[];
  } catch (e: any) {
    console.error(`[pg] sbSelect "${table}":`, e.message);
    return [];
  }
}

// ── INSERT ────────────────────────────────────────────────────────────────

export async function sbInsert<T = any>(
  table: string,
  row: Record<string, any>,
): Promise<T | null> {
  // Supabase path
  if (isSupabaseReady()) {
    try {
      const url = `${getSbUrl()}/rest/v1/${table}`;
      const res = await fetch(url, {
        method: "POST",
        headers: sbHeaders(),
        body: JSON.stringify(row),
        signal: AbortSignal.timeout(10000),
      });
      if (!res.ok) {
        const err = await res.text();
        console.error(`[sb] sbInsert "${table}" ${res.status}:`, err.slice(0, 200));
        return null;
      }
      const data = await res.json();
      return (Array.isArray(data) ? data[0] : data) as T | null;
    } catch (e: any) {
      console.error(`[sb] sbInsert "${table}":`, e.message);
      return null;
    }
  }

  // PostgreSQL fallback
  if (!isPgReady()) return null;
  try {
    const entries = Object.entries(row).filter(([, v]) => v !== undefined);
    const cols = entries.map(([k]) => `"${k}"`).join(", ");
    const placeholders = entries.map((_, i) => `$${i + 1}`).join(", ");
    const values = entries.map(([, v]) => v);
    const sql = `INSERT INTO "${table}" (${cols}) VALUES (${placeholders}) RETURNING *`;
    const result = await getPool().query(sql, values);
    return (result.rows[0] ?? null) as T | null;
  } catch (e: any) {
    console.error(`[pg] sbInsert "${table}":`, e.message);
    return null;
  }
}

// ── UPSERT ────────────────────────────────────────────────────────────────

export async function sbUpsert<T = any>(
  table: string,
  row: Record<string, any>,
  onConflict?: string,
): Promise<T | null> {
  // Supabase path
  if (isSupabaseReady()) {
    try {
      const h = { ...sbHeaders(), "Prefer": `resolution=merge-duplicates,return=representation` };
      const qs = onConflict ? `?on_conflict=${encodeURIComponent(onConflict)}` : "";
      const url = `${getSbUrl()}/rest/v1/${table}${qs}`;
      const res = await fetch(url, {
        method: "POST",
        headers: h,
        body: JSON.stringify(row),
        signal: AbortSignal.timeout(10000),
      });
      if (!res.ok) {
        const err = await res.text();
        console.error(`[sb] sbUpsert "${table}" ${res.status}:`, err.slice(0, 200));
        return null;
      }
      const data = await res.json();
      return (Array.isArray(data) ? data[0] : data) as T | null;
    } catch (e: any) {
      console.error(`[sb] sbUpsert "${table}":`, e.message);
      return null;
    }
  }

  // PostgreSQL fallback
  if (!isPgReady()) return null;
  try {
    const entries = Object.entries(row).filter(([, v]) => v !== undefined);
    const cols = entries.map(([k]) => `"${k}"`).join(", ");
    const placeholders = entries.map((_, i) => `$${i + 1}`).join(", ");
    const values = entries.map(([, v]) => v);

    let conflictClause = "";
    if (onConflict) {
      const updateCols = entries
        .filter(([k]) => k !== onConflict)
        .map(([k]) => `"${k}" = EXCLUDED."${k}"`)
        .join(", ");
      conflictClause = `ON CONFLICT ("${onConflict}") DO UPDATE SET ${updateCols}`;
    } else {
      conflictClause = "ON CONFLICT DO NOTHING";
    }

    const sql = `INSERT INTO "${table}" (${cols}) VALUES (${placeholders}) ${conflictClause} RETURNING *`;
    const result = await getPool().query(sql, values);
    return (result.rows[0] ?? null) as T | null;
  } catch (e: any) {
    console.error(`[pg] sbUpsert "${table}":`, e.message);
    return null;
  }
}

// ── PATCH (UPDATE) ────────────────────────────────────────────────────────

export async function sbPatch<T = any>(
  table: string,
  filter: Record<string, string | number>,
  data: Record<string, any>,
): Promise<T | null> {
  // Supabase path
  if (isSupabaseReady()) {
    try {
      const params: Record<string, string | number | undefined> = {};
      for (const [k, v] of Object.entries(filter)) params[k] = String(v);
      const url = `${getSbUrl()}/rest/v1/${table}${buildQuery(params)}`;
      const res = await fetch(url, {
        method: "PATCH",
        headers: sbHeaders(),
        body: JSON.stringify(data),
        signal: AbortSignal.timeout(10000),
      });
      if (!res.ok) {
        const err = await res.text();
        console.error(`[sb] sbPatch "${table}" ${res.status}:`, err.slice(0, 200));
        return null;
      }
      const result = await res.json();
      return (Array.isArray(result) ? result[0] : result) as T | null;
    } catch (e: any) {
      console.error(`[sb] sbPatch "${table}":`, e.message);
      return null;
    }
  }

  // PostgreSQL fallback
  if (!isPgReady()) return null;
  try {
    const setEntries = Object.entries(data).filter(([, v]) => v !== undefined);
    const setClause = setEntries.map(([k], i) => `"${k}" = $${i + 1}`).join(", ");
    const setValues = setEntries.map(([, v]) => v);

    const { where, values: whereValues } = buildWhere(filter, setEntries.length + 1);
    const sql = `UPDATE "${table}" SET ${setClause} ${where} RETURNING *`;
    const result = await getPool().query(sql, [...setValues, ...whereValues]);
    return (result.rows[0] ?? null) as T | null;
  } catch (e: any) {
    console.error(`[pg] sbPatch "${table}":`, e.message);
    return null;
  }
}

// ── DELETE ────────────────────────────────────────────────────────────────

export async function sbDelete(
  table: string,
  filter: Record<string, string | number>,
): Promise<boolean> {
  // Supabase path
  if (isSupabaseReady()) {
    try {
      const params: Record<string, string | number | undefined> = {};
      for (const [k, v] of Object.entries(filter)) params[k] = String(v);
      const url = `${getSbUrl()}/rest/v1/${table}${buildQuery(params)}`;
      const res = await fetch(url, {
        method: "DELETE",
        headers: sbHeaders(),
        signal: AbortSignal.timeout(10000),
      });
      return res.ok;
    } catch (e: any) {
      console.error(`[sb] sbDelete "${table}":`, e.message);
      return false;
    }
  }

  // PostgreSQL fallback
  if (!isPgReady()) return false;
  try {
    const { where, values } = buildWhere(filter);
    if (!where) return false; // safety: never delete all rows
    const sql = `DELETE FROM "${table}" ${where}`;
    await getPool().query(sql, values);
    return true;
  } catch (e: any) {
    console.error(`[pg] sbDelete "${table}":`, e.message);
    return false;
  }
}

// ── CHECK ─────────────────────────────────────────────────────────────────

export async function checkSupabase(): Promise<boolean> {
  if (isSupabaseReady()) {
    try {
      const url = `${getSbUrl()}/rest/v1/app_config?select=key&limit=1`;
      const res = await fetch(url, { headers: sbHeaders(), signal: AbortSignal.timeout(5000) });
      return res.ok;
    } catch { return false; }
  }
  if (isPgReady()) {
    try {
      await getPool().query("SELECT 1");
      return true;
    } catch { return false; }
  }
  return false;
}
