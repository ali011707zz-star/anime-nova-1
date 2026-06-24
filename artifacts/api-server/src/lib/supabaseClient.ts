/**
 * supabaseClient.ts — يستخدم PostgreSQL المحلي (DATABASE_URL) مباشرة
 * يدعم نفس واجهة sbSelect/sbInsert/sbUpsert/sbPatch/sbDelete
 * بدون الحاجة لـ Supabase URL أو Service Key
 */

import pg from "pg";
const { Pool } = pg;

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  max: 10,
  idleTimeoutMillis: 30000,
  connectionTimeoutMillis: 5000,
  ssl: process.env.DATABASE_URL?.includes("localhost") ? false : { rejectUnauthorized: false },
});

export const isSupabaseReady = true; // محلي دائماً جاهز

pool.on("error", (err) => {
  console.error("[db] ❌ خطأ في pg pool:", err.message);
});

pool.connect().then(client => {
  client.release();
  console.log("[db] ✅ PostgreSQL محلي متصل →", process.env.DATABASE_URL?.replace(/:\/\/.*@/, "://***@"));
}).catch(err => {
  console.error("[db] ❌ فشل الاتصال بـ PostgreSQL:", err.message);
});

// ── تحويل فلاتر Supabase إلى SQL ────────────────────────────────────────────

type FilterMap = Record<string, string>;

function parseFilters(params: FilterMap): { where: string; values: any[] } {
  const conditions: string[] = [];
  const values: any[] = [];
  let idx = 1;

  const skip = new Set(["order", "limit", "offset", "select"]);

  for (const [col, expr] of Object.entries(params)) {
    if (skip.has(col)) continue;

    // eq.value → col = $N
    if (expr.startsWith("eq.")) {
      const val = expr.slice(3);
      if (val === "null") { conditions.push(`"${col}" IS NULL`); continue; }
      conditions.push(`"${col}" = $${idx++}`);
      values.push(val);
    }
    // is.null → col IS NULL
    else if (expr === "is.null") {
      conditions.push(`"${col}" IS NULL`);
    }
    // is.not_null → col IS NOT NULL
    else if (expr === "is.not_null" || expr === "not.is.null") {
      conditions.push(`"${col}" IS NOT NULL`);
    }
    // in.(a,b,c) → col IN ($1,$2,$3)
    else if (expr.startsWith("in.(") && expr.endsWith(")")) {
      const items = expr.slice(4, -1).split(",").filter(Boolean);
      if (items.length === 0) { conditions.push("FALSE"); continue; }
      const placeholders = items.map(() => `$${idx++}`).join(",");
      conditions.push(`"${col}" IN (${placeholders})`);
      values.push(...items);
    }
    // ilike.*val* → col ILIKE '%val%'
    else if (expr.startsWith("ilike.")) {
      const pat = expr.slice(6).replace(/\*/g, "%");
      conditions.push(`"${col}" ILIKE $${idx++}`);
      values.push(pat);
    }
    // gt.value, gte.value, lt.value, lte.value
    else if (expr.startsWith("gt."))  { conditions.push(`"${col}" >  $${idx++}`); values.push(expr.slice(3)); }
    else if (expr.startsWith("gte.")) { conditions.push(`"${col}" >= $${idx++}`); values.push(expr.slice(4)); }
    else if (expr.startsWith("lt."))  { conditions.push(`"${col}" <  $${idx++}`); values.push(expr.slice(3)); }
    else if (expr.startsWith("lte.")) { conditions.push(`"${col}" <= $${idx++}`); values.push(expr.slice(4)); }
    // neq.value → col != $N
    else if (expr.startsWith("neq.")) { conditions.push(`"${col}" != $${idx++}`); values.push(expr.slice(4)); }
    // fallback: treat as exact match
    else {
      conditions.push(`"${col}" = $${idx++}`);
      values.push(expr);
    }
  }

  return {
    where: conditions.length ? `WHERE ${conditions.join(" AND ")}` : "",
    values,
  };
}

function parseOrder(order?: string): string {
  if (!order) return "";
  // "created_at.asc" → ORDER BY created_at ASC
  const parts = order.split(".");
  const col = parts[0];
  const dir = parts[1]?.toUpperCase() === "DESC" ? "DESC" : "ASC";
  return `ORDER BY "${col}" ${dir}`;
}

// ── SELECT ───────────────────────────────────────────────────────────────────

export async function sbSelect<T = any>(
  table: string,
  params: FilterMap = {},
  opts: { limit?: number; select?: string } = {},
): Promise<T[]> {
  try {
    const { where, values } = parseFilters(params);
    const order  = parseOrder(params.order);
    const limit  = opts.limit || (params.limit ? Number(params.limit) : 200);
    const offset = params.offset ? Number(params.offset) : 0;
    const cols   = opts.select ? opts.select.replace(/,/g, ", ") : "*";

    let idx = values.length + 1;
    const q = `SELECT ${cols} FROM "${table}" ${where} ${order} LIMIT $${idx++} OFFSET $${idx}`;
    const result = await pool.query(q, [...values, limit, offset]);
    return result.rows as T[];
  } catch (e: any) {
    console.error(`[db] sbSelect "${table}":`, e.message);
    return [];
  }
}

// ── INSERT ───────────────────────────────────────────────────────────────────

export async function sbInsert<T = any>(
  table: string,
  row: Record<string, any>,
): Promise<T | null> {
  try {
    const keys   = Object.keys(row);
    const cols   = keys.map(k => `"${k}"`).join(", ");
    const vals   = keys.map((_, i) => `$${i + 1}`).join(", ");
    const values = keys.map(k => row[k]);
    const q = `INSERT INTO "${table}" (${cols}) VALUES (${vals}) RETURNING *`;
    const result = await pool.query(q, values);
    return (result.rows[0] ?? null) as T | null;
  } catch (e: any) {
    console.error(`[db] sbInsert "${table}":`, e.message);
    return null;
  }
}

// ── UPSERT ───────────────────────────────────────────────────────────────────

export async function sbUpsert<T = any>(
  table: string,
  row: Record<string, any>,
  onConflict?: string,
): Promise<T | null> {
  try {
    const keys   = Object.keys(row);
    const cols   = keys.map(k => `"${k}"`).join(", ");
    const vals   = keys.map((_, i) => `$${i + 1}`).join(", ");
    const values = keys.map(k => row[k]);

    let conflict = "";
    if (onConflict) {
      const setCols = keys
        .filter(k => k !== onConflict)
        .map(k => `"${k}" = EXCLUDED."${k}"`)
        .join(", ");
      conflict = `ON CONFLICT ("${onConflict}") DO UPDATE SET ${setCols}`;
    } else {
      conflict = "ON CONFLICT DO NOTHING";
    }

    const q = `INSERT INTO "${table}" (${cols}) VALUES (${vals}) ${conflict} RETURNING *`;
    const result = await pool.query(q, values);
    return (result.rows[0] ?? null) as T | null;
  } catch (e: any) {
    console.error(`[db] sbUpsert "${table}":`, e.message);
    return null;
  }
}

// ── PATCH (UPDATE) ───────────────────────────────────────────────────────────

export async function sbPatch<T = any>(
  table: string,
  filter: FilterMap,
  data: Record<string, any>,
): Promise<T | null> {
  try {
    const dataKeys = Object.keys(data);
    const dataVals = dataKeys.map(k => data[k]);
    const setCols  = dataKeys.map((k, i) => `"${k}" = $${i + 1}`).join(", ");

    // فلاتر تبدأ بعد بيانات الـ SET
    const tempParams = { ...filter };
    const { where, values: filterVals } = parseFilters(tempParams);
    // أعد ترقيم المتغيرات في الـ where
    let reIndexed = where;
    let fIdx = dataKeys.length + 1;
    reIndexed = reIndexed.replace(/\$(\d+)/g, () => `$${fIdx++}`);

    const q = `UPDATE "${table}" SET ${setCols} ${reIndexed} RETURNING *`;
    const result = await pool.query(q, [...dataVals, ...filterVals]);
    return (result.rows[0] ?? null) as T | null;
  } catch (e: any) {
    console.error(`[db] sbPatch "${table}":`, e.message);
    return null;
  }
}

// ── DELETE ───────────────────────────────────────────────────────────────────

export async function sbDelete(
  table: string,
  filter: FilterMap,
): Promise<boolean> {
  try {
    if (Object.keys(filter).length === 0) {
      console.warn(`[db] sbDelete "${table}" called with no filter — skipping`);
      return false;
    }
    const { where, values } = parseFilters(filter);
    if (!where) return false;
    await pool.query(`DELETE FROM "${table}" ${where}`, values);
    return true;
  } catch (e: any) {
    console.error(`[db] sbDelete "${table}":`, e.message);
    return false;
  }
}

// ── CHECK ────────────────────────────────────────────────────────────────────

export async function checkSupabase(): Promise<boolean> {
  try {
    await pool.query("SELECT 1");
    return true;
  } catch { return false; }
}
