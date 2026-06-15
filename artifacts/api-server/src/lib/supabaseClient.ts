/**
 * supabaseClient.ts — Supabase REST client (بدل Drizzle + Replit PostgreSQL)
 * يستخدم fetch() مباشرة → يعمل بشكل دائم بدون أي اتصال DNS بـ Supabase PostgreSQL
 */

const SB_URL = process.env.SUPABASE_URL!;
const SB_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY!;

const SB_HEADERS = {
  "apikey":        SB_KEY,
  "Authorization": `Bearer ${SB_KEY}`,
  "Content-Type":  "application/json",
  "Prefer":        "return=representation",
};

/** GET rows from a table with optional filter */
export async function sbSelect<T = any>(
  table: string,
  params: Record<string, string> = {},
  opts: { limit?: number } = {}
): Promise<T[]> {
  const q = new URLSearchParams(params);
  if (opts.limit) q.set("limit", String(opts.limit));
  const url = `${SB_URL}/rest/v1/${table}?select=*&${q.toString()}`;
  const r = await fetch(url, { headers: SB_HEADERS, signal: AbortSignal.timeout(8_000) });
  if (!r.ok) return [];
  const data = await r.json();
  return Array.isArray(data) ? data : [];
}

/** UPSERT (insert or update on conflict) */
export async function sbUpsert<T = any>(
  table: string,
  row: Record<string, any>,
  onConflict?: string
): Promise<T | null> {
  const headers = { ...SB_HEADERS, "Prefer": `resolution=merge-duplicates,return=representation` };
  if (onConflict) headers["Prefer"] += `,on_conflict=${onConflict}`;
  const r = await fetch(`${SB_URL}/rest/v1/${table}`, {
    method: "POST",
    headers,
    body: JSON.stringify(row),
    signal: AbortSignal.timeout(8_000),
  });
  if (!r.ok) return null;
  const data = await r.json();
  return Array.isArray(data) ? data[0] ?? null : data;
}

/** INSERT single row */
export async function sbInsert<T = any>(
  table: string,
  row: Record<string, any>
): Promise<T | null> {
  const r = await fetch(`${SB_URL}/rest/v1/${table}`, {
    method: "POST",
    headers: SB_HEADERS,
    body: JSON.stringify(row),
    signal: AbortSignal.timeout(8_000),
  });
  if (!r.ok) return null;
  const data = await r.json();
  return Array.isArray(data) ? data[0] ?? null : data;
}

/** DELETE rows matching a filter like { column: "eq.value" } */
export async function sbDelete(
  table: string,
  filter: Record<string, string>
): Promise<boolean> {
  const q = new URLSearchParams(filter);
  const r = await fetch(`${SB_URL}/rest/v1/${table}?${q.toString()}`, {
    method: "DELETE",
    headers: SB_HEADERS,
    signal: AbortSignal.timeout(8_000),
  });
  return r.ok;
}

/** PATCH (update) rows matching a filter */
export async function sbPatch<T = any>(
  table: string,
  filter: Record<string, string>,
  data: Record<string, any>
): Promise<T | null> {
  const q = new URLSearchParams(filter);
  const r = await fetch(`${SB_URL}/rest/v1/${table}?${q.toString()}`, {
    method: "PATCH",
    headers: SB_HEADERS,
    body: JSON.stringify(data),
    signal: AbortSignal.timeout(8_000),
  });
  if (!r.ok) return null;
  const res = await r.json();
  return Array.isArray(res) ? res[0] ?? null : res;
}

export const isSupabaseReady = !!(SB_URL && SB_KEY);
