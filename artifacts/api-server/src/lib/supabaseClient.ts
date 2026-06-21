/**
 * supabaseClient.ts — Supabase REST API client
 * يعمل على أي خادم (AlwaysData, Koyeb, Replit) بدون قيود DNS
 * يحتاج فقط: SUPABASE_URL + SUPABASE_SERVICE_ROLE_KEY
 */

const SUPABASE_URL = (process.env.SUPABASE_URL || "").replace(/\/$/, "");
const SUPABASE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY || "";

export const isSupabaseReady = !!(SUPABASE_URL && SUPABASE_KEY);

if (isSupabaseReady) {
  console.log("[db] ✅ Supabase REST جاهز —", SUPABASE_URL.slice(0, 40));
} else {
  const missing: string[] = [];
  if (!SUPABASE_URL) missing.push("SUPABASE_URL");
  if (!SUPABASE_KEY) missing.push("SUPABASE_SERVICE_ROLE_KEY");
  console.warn(`[db] ⚠️ متغيرات ناقصة: ${missing.join(", ")} — قاعدة البيانات معطّلة`);
}

function baseHeaders(extra: Record<string, string> = {}): Record<string, string> {
  return {
    "apikey": SUPABASE_KEY,
    "Authorization": `Bearer ${SUPABASE_KEY}`,
    "Content-Type": "application/json",
    "Prefer": "return=representation",
    ...extra,
  };
}

function buildUrl(
  table: string,
  params: Record<string, string> = {},
  opts: { limit?: number; select?: string } = {},
): string {
  const url = new URL(`${SUPABASE_URL}/rest/v1/${table}`);
  url.searchParams.set("select", opts.select || "*");
  for (const [k, v] of Object.entries(params)) {
    if (k === "select") continue;
    url.searchParams.set(k, v);
  }
  if (opts.limit) url.searchParams.set("limit", String(opts.limit));
  return url.toString();
}

/** SELECT rows from a table */
export async function sbSelect<T = any>(
  table: string,
  params: Record<string, string> = {},
  opts: { limit?: number } = {},
): Promise<T[]> {
  if (!isSupabaseReady) return [];
  try {
    const url = buildUrl(table, params, opts);
    const res = await fetch(url, {
      headers: baseHeaders(),
      signal: AbortSignal.timeout(8_000),
    });
    if (!res.ok) {
      const err = await res.text().catch(() => res.status.toString());
      console.error(`[db] sbSelect "${table}" HTTP ${res.status}:`, err.slice(0, 120));
      return [];
    }
    return await res.json() as T[];
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
  if (!isSupabaseReady) return null;
  try {
    const res = await fetch(`${SUPABASE_URL}/rest/v1/${table}`, {
      method: "POST",
      headers: baseHeaders(),
      body: JSON.stringify(row),
      signal: AbortSignal.timeout(8_000),
    });
    if (!res.ok) {
      const err = await res.text().catch(() => res.status.toString());
      console.error(`[db] sbInsert "${table}" HTTP ${res.status}:`, err.slice(0, 120));
      return null;
    }
    const data = await res.json();
    return (Array.isArray(data) ? data[0] : data) as T | null;
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
  if (!isSupabaseReady) return null;
  try {
    const urlStr = onConflict
      ? `${SUPABASE_URL}/rest/v1/${table}?on_conflict=${encodeURIComponent(onConflict)}`
      : `${SUPABASE_URL}/rest/v1/${table}`;
    const res = await fetch(urlStr, {
      method: "POST",
      headers: baseHeaders({ "Prefer": "resolution=merge-duplicates,return=representation" }),
      body: JSON.stringify(row),
      signal: AbortSignal.timeout(8_000),
    });
    if (!res.ok) return null;
    const data = await res.json();
    return (Array.isArray(data) ? data[0] : data) as T | null;
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
  if (!isSupabaseReady) return null;
  try {
    const url = buildUrl(table, filter);
    const res = await fetch(url, {
      method: "PATCH",
      headers: baseHeaders(),
      body: JSON.stringify(data),
      signal: AbortSignal.timeout(8_000),
    });
    if (!res.ok) return null;
    const result = await res.json();
    return (Array.isArray(result) ? result[0] : result) as T | null;
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
  if (!isSupabaseReady) return false;
  try {
    const url = buildUrl(table, filter);
    const res = await fetch(url, {
      method: "DELETE",
      headers: baseHeaders(),
      signal: AbortSignal.timeout(8_000),
    });
    return res.ok;
  } catch (e: any) {
    console.error(`[db] sbDelete "${table}" error:`, e.message);
    return false;
  }
}

/** Check Supabase connectivity */
export async function checkSupabase(): Promise<boolean> {
  if (!isSupabaseReady) return false;
  try {
    const res = await fetch(
      `${SUPABASE_URL}/rest/v1/app_config?limit=1&select=key`,
      { headers: baseHeaders(), signal: AbortSignal.timeout(5_000) },
    );
    return res.ok;
  } catch { return false; }
}
