/**
 * supabaseClient.ts — Supabase REST API client
 * يتصل بـ Supabase عبر HTTPS (REST API) بدلاً من pg مباشرة.
 * متوافق مع Replit الذي يحجب اتصالات TCP الخارجية.
 */

const SUPABASE_URL = process.env.SUPABASE_URL || "";
const SUPABASE_KEY = process.env.SUPABASE_SERVICE_KEY || "";

export const isSupabaseReady = !!(SUPABASE_URL && SUPABASE_KEY);

if (isSupabaseReady) {
  console.log("[db] ✅ Supabase REST API جاهز →", SUPABASE_URL.substring(0, 40));
} else {
  console.warn("[db] ⚠️ SUPABASE_URL أو SUPABASE_SERVICE_KEY غير موجود");
}

function baseHeaders() {
  return {
    "apikey": SUPABASE_KEY,
    "Authorization": `Bearer ${SUPABASE_KEY}`,
    "Content-Type": "application/json",
  };
}

const SKIP_KEYS = new Set(["order", "limit", "offset", "select"]);

function buildQuery(params: Record<string, string>, opts: { limit?: number; select?: string } = {}): string {
  const qs = new URLSearchParams();
  if (opts.select) qs.set("select", opts.select);
  for (const [k, v] of Object.entries(params)) {
    if (SKIP_KEYS.has(k)) continue;
    qs.set(k, v);
  }
  if (params.order) qs.set("order", params.order);
  if (params.offset) qs.set("offset", params.offset);
  if (opts.limit) qs.set("limit", String(opts.limit));
  else if (params.limit) qs.set("limit", params.limit);
  return qs.toString() ? `?${qs.toString()}` : "";
}

/** SELECT rows */
export async function sbSelect<T = any>(
  table: string,
  params: Record<string, string> = {},
  opts: { limit?: number; select?: string } = {},
): Promise<T[]> {
  if (!isSupabaseReady) return [];
  try {
    const qs = buildQuery(params, opts);
    const res = await fetch(`${SUPABASE_URL}/rest/v1/${table}${qs}`, {
      headers: baseHeaders(),
      signal: AbortSignal.timeout(8000),
    });
    if (!res.ok) {
      const err = await res.text();
      console.error(`[db] sbSelect "${table}":`, err.substring(0, 200));
      return [];
    }
    return await res.json() as T[];
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
      method: "POST",
      headers: { ...baseHeaders(), "Prefer": "return=representation" },
      body: JSON.stringify(row),
      signal: AbortSignal.timeout(8000),
    });
    if (!res.ok) {
      const err = await res.text();
      console.error(`[db] sbInsert "${table}":`, err.substring(0, 200));
      return null;
    }
    const data = await res.json();
    return (Array.isArray(data) ? data[0] : data) as T | null;
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
    const prefer = onConflict
      ? `return=representation,resolution=merge-duplicates`
      : `return=representation,resolution=ignore-duplicates`;
    const qs = onConflict ? `?on_conflict=${encodeURIComponent(onConflict)}` : "";
    const res = await fetch(`${SUPABASE_URL}/rest/v1/${table}${qs}`, {
      method: "POST",
      headers: { ...baseHeaders(), "Prefer": prefer },
      body: JSON.stringify(row),
      signal: AbortSignal.timeout(8000),
    });
    if (!res.ok) {
      const err = await res.text();
      console.error(`[db] sbUpsert "${table}":`, err.substring(0, 200));
      return null;
    }
    const data = await res.json();
    return (Array.isArray(data) ? data[0] : data) as T | null;
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
    const qs = buildQuery(filter);
    const res = await fetch(`${SUPABASE_URL}/rest/v1/${table}${qs}`, {
      method: "PATCH",
      headers: { ...baseHeaders(), "Prefer": "return=representation" },
      body: JSON.stringify(data),
      signal: AbortSignal.timeout(8000),
    });
    if (!res.ok) {
      const err = await res.text();
      console.error(`[db] sbPatch "${table}":`, err.substring(0, 200));
      return null;
    }
    const result = await res.json();
    return (Array.isArray(result) ? result[0] : result) as T | null;
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
    const qs = buildQuery(filter);
    if (!qs) {
      console.warn(`[db] sbDelete "${table}" called with no filter — skipping`);
      return false;
    }
    const res = await fetch(`${SUPABASE_URL}/rest/v1/${table}${qs}`, {
      method: "DELETE",
      headers: baseHeaders(),
      signal: AbortSignal.timeout(8000),
    });
    if (!res.ok) {
      const err = await res.text();
      console.error(`[db] sbDelete "${table}":`, err.substring(0, 200));
      return false;
    }
    return true;
  } catch (e: any) {
    console.error(`[db] sbDelete "${table}":`, e.message);
    return false;
  }
}

/** فحص الاتصال */
export async function checkSupabase(): Promise<boolean> {
  if (!isSupabaseReady) return false;
  try {
    const res = await fetch(`${SUPABASE_URL}/rest/v1/users?limit=1`, {
      headers: baseHeaders(),
      signal: AbortSignal.timeout(5000),
    });
    return res.ok || res.status === 416;
  } catch { return false; }
}
