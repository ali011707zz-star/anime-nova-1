/**
 * supabaseCacheClient.ts — Supabase REST API cache client
 * يعمل على أي خادم بدون قيود DNS
 * يحتاج فقط: SUPABASE_URL + SUPABASE_SERVICE_ROLE_KEY
 */

const SUPABASE_URL = (process.env.SUPABASE_URL || "").replace(/\/$/, "");
const SUPABASE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY || "";

export const isCacheDbReady = !!(SUPABASE_URL && SUPABASE_KEY);

if (isCacheDbReady) {
  console.log("[cacheClient] ✅ Supabase REST جاهز للكاش المشترك");
} else {
  const missing: string[] = [];
  if (!SUPABASE_URL) missing.push("SUPABASE_URL");
  if (!SUPABASE_KEY) missing.push("SUPABASE_SERVICE_ROLE_KEY");
  console.warn(`[cacheClient] ⚠️ متغيرات ناقصة: ${missing.join(", ")} — الكاش L2 معطّل`);
}

function headers(extra: Record<string, string> = {}): Record<string, string> {
  return {
    "apikey": SUPABASE_KEY,
    "Authorization": `Bearer ${SUPABASE_KEY}`,
    "Content-Type": "application/json",
    "Prefer": "return=representation",
    ...extra,
  };
}

function buildUrl(table: string, params: Record<string, string> = {}, opts: { limit?: number } = {}): string {
  const url = new URL(`${SUPABASE_URL}/rest/v1/${table}`);
  url.searchParams.set("select", "*");
  for (const [k, v] of Object.entries(params)) {
    url.searchParams.set(k, v);
  }
  if (opts.limit) url.searchParams.set("limit", String(opts.limit));
  return url.toString();
}

/** SELECT rows from a cache table */
export async function cacheSelect<T = any>(
  table: string,
  params: Record<string, string> = {},
  opts: { limit?: number } = {},
): Promise<T[]> {
  if (!isCacheDbReady) return [];
  try {
    const url = buildUrl(table, params, opts);
    const res = await fetch(url, {
      headers: headers(),
      signal: AbortSignal.timeout(8_000),
    });
    if (!res.ok) return [];
    return await res.json() as T[];
  } catch { return []; }
}

/** UPSERT row in cache table */
export async function cacheUpsert<T = any>(
  table: string,
  row: Record<string, any>,
  onConflict?: string,
): Promise<T | null> {
  if (!isCacheDbReady) return null;
  try {
    const urlStr = onConflict
      ? `${SUPABASE_URL}/rest/v1/${table}?on_conflict=${encodeURIComponent(onConflict)}`
      : `${SUPABASE_URL}/rest/v1/${table}`;
    const res = await fetch(urlStr, {
      method: "POST",
      headers: headers({ "Prefer": "resolution=merge-duplicates,return=representation" }),
      body: JSON.stringify(row),
      signal: AbortSignal.timeout(8_000),
    });
    if (!res.ok) return null;
    const data = await res.json();
    return (Array.isArray(data) ? data[0] : data) as T | null;
  } catch { return null; }
}

/** INSERT single row in cache table */
export async function cacheInsert<T = any>(
  table: string,
  row: Record<string, any>,
): Promise<T | null> {
  if (!isCacheDbReady) return null;
  try {
    const res = await fetch(`${SUPABASE_URL}/rest/v1/${table}`, {
      method: "POST",
      headers: headers(),
      body: JSON.stringify(row),
      signal: AbortSignal.timeout(8_000),
    });
    if (!res.ok) return null;
    const data = await res.json();
    return (Array.isArray(data) ? data[0] : data) as T | null;
  } catch { return null; }
}

/** DELETE rows from cache table */
export async function cacheDelete(
  table: string,
  filter: Record<string, string>,
): Promise<boolean> {
  if (!isCacheDbReady) return false;
  try {
    const url = buildUrl(table, filter);
    const res = await fetch(url, {
      method: "DELETE",
      headers: headers(),
      signal: AbortSignal.timeout(8_000),
    });
    return res.ok;
  } catch { return false; }
}

/** PATCH rows in cache table */
export async function cachePatch<T = any>(
  table: string,
  filter: Record<string, string>,
  data: Record<string, any>,
): Promise<T | null> {
  if (!isCacheDbReady) return null;
  try {
    const url = buildUrl(table, filter);
    const res = await fetch(url, {
      method: "PATCH",
      headers: headers(),
      body: JSON.stringify(data),
      signal: AbortSignal.timeout(8_000),
    });
    if (!res.ok) return null;
    const result = await res.json();
    return (Array.isArray(result) ? result[0] : result) as T | null;
  } catch { return null; }
}
