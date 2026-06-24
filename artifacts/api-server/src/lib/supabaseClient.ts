/**
 * supabaseClient.ts — Supabase REST API client (PostgREST)
 * يستخدم SUPABASE_URL + SUPABASE_SERVICE_KEY لكل عمليات قاعدة البيانات.
 * Drop-in replacement: نفس الدوال بنفس الـ signatures.
 */

const SUPABASE_URL = (process.env.SUPABASE_URL || "").replace(/\/$/, "");
const SUPABASE_KEY = process.env.SUPABASE_SERVICE_KEY || "";

export const isSupabaseReady = !!(SUPABASE_URL && SUPABASE_KEY);

if (isSupabaseReady) {
  console.log(`[db] ✅ Supabase REST جاهز → ${SUPABASE_URL}`);
} else {
  console.warn("[db] ⚠️ SUPABASE_URL أو SUPABASE_SERVICE_KEY غير موجود — قاعدة البيانات معطّلة");
}

function getHeaders(extra: Record<string, string> = {}): Record<string, string> {
  return {
    "apikey":        SUPABASE_KEY,
    "Authorization": `Bearer ${SUPABASE_KEY}`,
    "Content-Type":  "application/json",
    ...extra,
  };
}

function buildUrl(
  table: string,
  params: Record<string, string> = {},
  opts: { limit?: number; select?: string } = {},
): string {
  const url = new URL(`${SUPABASE_URL}/rest/v1/${table}`);
  const skip = new Set(["order", "limit", "offset", "select"]);

  for (const [k, v] of Object.entries(params)) {
    if (!skip.has(k)) url.searchParams.set(k, v);
  }
  if (params.order)  url.searchParams.set("order",  params.order);
  if (params.offset) url.searchParams.set("offset", params.offset);
  if (opts.select)   url.searchParams.set("select", opts.select);
  if (opts.limit)    url.searchParams.set("limit",  String(opts.limit));

  return url.toString();
}

/** SELECT rows */
export async function sbSelect<T = any>(
  table: string,
  params: Record<string, string> = {},
  opts: { limit?: number; select?: string } = {},
): Promise<T[]> {
  if (!isSupabaseReady) return [];
  try {
    const res = await fetch(buildUrl(table, params, opts), {
      headers: getHeaders(),
      signal:  AbortSignal.timeout(10_000),
    });
    if (!res.ok) {
      const err = await res.text().catch(() => res.statusText);
      console.error(`[db] sbSelect "${table}" ${res.status}:`, err);
      return [];
    }
    return (await res.json()) as T[];
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
    const res = await fetch(`${SUPABASE_URL}/rest/v1/${table}`, {
      method:  "POST",
      headers: getHeaders({ "Prefer": "return=representation" }),
      body:    JSON.stringify(row),
      signal:  AbortSignal.timeout(10_000),
    });
    if (!res.ok) {
      const err = await res.text().catch(() => res.statusText);
      console.error(`[db] sbInsert "${table}" ${res.status}:`, err);
      return null;
    }
    const data = await res.json();
    return (Array.isArray(data) ? data[0] : data) ?? null;
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
    const url = new URL(`${SUPABASE_URL}/rest/v1/${table}`);
    if (onConflict) url.searchParams.set("on_conflict", onConflict);

    const prefer = onConflict
      ? "resolution=merge-duplicates,return=representation"
      : "return=representation";

    const res = await fetch(url.toString(), {
      method:  "POST",
      headers: getHeaders({ "Prefer": prefer }),
      body:    JSON.stringify(row),
      signal:  AbortSignal.timeout(10_000),
    });
    if (!res.ok) {
      const err = await res.text().catch(() => res.statusText);
      console.error(`[db] sbUpsert "${table}" ${res.status}:`, err);
      return null;
    }
    const data = await res.json();
    return (Array.isArray(data) ? data[0] : data) ?? null;
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
    const res = await fetch(buildUrl(table, filter), {
      method:  "PATCH",
      headers: getHeaders({ "Prefer": "return=representation" }),
      body:    JSON.stringify(data),
      signal:  AbortSignal.timeout(10_000),
    });
    if (!res.ok) {
      const err = await res.text().catch(() => res.statusText);
      console.error(`[db] sbPatch "${table}" ${res.status}:`, err);
      return null;
    }
    const result = await res.json();
    return (Array.isArray(result) ? result[0] : result) ?? null;
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
    const res = await fetch(buildUrl(table, filter), {
      method:  "DELETE",
      headers: getHeaders(),
      signal:  AbortSignal.timeout(10_000),
    });
    if (!res.ok) {
      const err = await res.text().catch(() => res.statusText);
      console.error(`[db] sbDelete "${table}" ${res.status}:`, err);
      return false;
    }
    return true;
  } catch (e: any) {
    console.error(`[db] sbDelete "${table}":`, e.message);
    return false;
  }
}

/** فحص الاتصال بـ Supabase */
export async function checkSupabase(): Promise<boolean> {
  if (!isSupabaseReady) return false;
  try {
    const res = await fetch(`${SUPABASE_URL}/rest/v1/`, {
      headers: getHeaders(),
      signal:  AbortSignal.timeout(6_000),
    });
    return res.ok;
  } catch { return false; }
}
