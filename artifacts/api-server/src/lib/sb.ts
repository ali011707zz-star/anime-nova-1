/**
 * sb.ts — Supabase REST API helper
 * Replit cannot connect to Supabase PostgreSQL directly (DNS blocked),
 * so all DB operations go through the PostgREST REST API.
 */

const SUPABASE_URL = process.env.SUPABASE_URL!;
const SUPABASE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY!;

function baseHeaders(extra?: Record<string, string>) {
  return {
    Authorization: `Bearer ${SUPABASE_KEY}`,
    apikey: SUPABASE_KEY,
    "Content-Type": "application/json",
    ...extra,
  };
}

/** GET — returns array of rows */
export async function sbGet<T = any>(
  table: string,
  params: Record<string, string> = {},
  select = "*"
): Promise<T[]> {
  const q = new URLSearchParams({ select, ...params });
  const res = await fetch(`${SUPABASE_URL}/rest/v1/${table}?${q}`, {
    headers: baseHeaders(),
  });
  if (!res.ok) throw new Error(`[sb] GET ${table}: ${res.status} ${await res.text()}`);
  return res.json() as Promise<T[]>;
}

/** INSERT — returns inserted rows */
export async function sbInsert<T = any>(
  table: string,
  data: object | object[]
): Promise<T[]> {
  const res = await fetch(`${SUPABASE_URL}/rest/v1/${table}`, {
    method: "POST",
    headers: baseHeaders({ Prefer: "return=representation" }),
    body: JSON.stringify(data),
  });
  if (!res.ok) throw new Error(`[sb] INSERT ${table}: ${res.status} ${await res.text()}`);
  return res.json() as Promise<T[]>;
}

/** UPSERT (on conflict → merge) — returns upserted rows */
export async function sbUpsert<T = any>(
  table: string,
  data: object | object[]
): Promise<T[]> {
  const res = await fetch(`${SUPABASE_URL}/rest/v1/${table}`, {
    method: "POST",
    headers: baseHeaders({ Prefer: "resolution=merge-duplicates,return=representation" }),
    body: JSON.stringify(data),
  });
  if (!res.ok) throw new Error(`[sb] UPSERT ${table}: ${res.status} ${await res.text()}`);
  return res.json() as Promise<T[]>;
}

/** INSERT — ignore duplicates, no return */
export async function sbInsertIgnore(
  table: string,
  data: object | object[]
): Promise<void> {
  const res = await fetch(`${SUPABASE_URL}/rest/v1/${table}`, {
    method: "POST",
    headers: baseHeaders({ Prefer: "resolution=ignore-duplicates,return=minimal" }),
    body: JSON.stringify(data),
  });
  if (!res.ok) throw new Error(`[sb] INSERT IGNORE ${table}: ${res.status} ${await res.text()}`);
}

/** PATCH (update rows matching filter params) — returns updated rows */
export async function sbUpdate<T = any>(
  table: string,
  params: Record<string, string>,
  data: object
): Promise<T[]> {
  const q = new URLSearchParams(params);
  const res = await fetch(`${SUPABASE_URL}/rest/v1/${table}?${q}`, {
    method: "PATCH",
    headers: baseHeaders({ Prefer: "return=representation" }),
    body: JSON.stringify(data),
  });
  if (!res.ok) throw new Error(`[sb] PATCH ${table}: ${res.status} ${await res.text()}`);
  return res.json() as Promise<T[]>;
}

/** DELETE rows matching filter params */
export async function sbDelete(
  table: string,
  params: Record<string, string>
): Promise<void> {
  const q = new URLSearchParams(params);
  const res = await fetch(`${SUPABASE_URL}/rest/v1/${table}?${q}`, {
    method: "DELETE",
    headers: baseHeaders({ Prefer: "return=minimal" }),
  });
  if (!res.ok) throw new Error(`[sb] DELETE ${table}: ${res.status} ${await res.text()}`);
}

/** Call a Postgres RPC function */
export async function sbRpc<T = any>(fn: string, args: object = {}): Promise<T> {
  const res = await fetch(`${SUPABASE_URL}/rest/v1/rpc/${fn}`, {
    method: "POST",
    headers: baseHeaders(),
    body: JSON.stringify(args),
  });
  if (!res.ok) throw new Error(`[sb] RPC ${fn}: ${res.status} ${await res.text()}`);
  return res.json() as Promise<T>;
}
