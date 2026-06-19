/**
 * supabaseCacheClient.ts — Supabase REST cache client
 * Migrated from direct pg to Supabase REST API.
 * Direct db.supabase.co connections are DNS-blocked on Replit.
 */

const SB_URL = () => (process.env.SUPABASE_URL || "").replace(/\/$/, "");
const SB_KEY = () => process.env.SUPABASE_SERVICE_ROLE_KEY || "";

export const isCacheDbReady = !!(process.env.SUPABASE_URL && process.env.SUPABASE_SERVICE_ROLE_KEY);

function hdrs(extra: Record<string, string> = {}): Record<string, string> {
  return {
    apikey:         SB_KEY(),
    Authorization:  `Bearer ${SB_KEY()}`,
    "Content-Type": "application/json",
    ...extra,
  };
}

function toQS(params: Record<string, string>, limit?: number): string {
  const parts: string[] = ["select=*"];
  for (const [k, v] of Object.entries(params)) {
    if (k === "select") { parts[0] = `select=${v}`; continue; }
    parts.push(`${encodeURIComponent(k)}=${encodeURIComponent(v)}`);
  }
  if (limit) parts.push(`limit=${limit}`);
  return parts.join("&");
}

function url(table: string, qs = ""): string {
  return `${SB_URL()}/rest/v1/${table}${qs ? "?" + qs : ""}`;
}

/** SELECT rows from a cache table */
export async function cacheSelect<T = any>(
  table: string,
  params: Record<string, string> = {},
  opts: { limit?: number } = {},
): Promise<T[]> {
  if (!isCacheDbReady) return [];
  try {
    const res = await fetch(url(table, toQS(params, opts.limit)), {
      headers: hdrs(),
      signal: AbortSignal.timeout(8_000),
    });
    if (!res.ok) return [];
    return (await res.json()) as T[];
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
    const prefer = onConflict
      ? "resolution=merge-duplicates,return=representation"
      : "resolution=ignore-duplicates,return=representation";
    const qs = onConflict ? `on_conflict=${encodeURIComponent(onConflict)}` : "";
    const res = await fetch(url(table, qs), {
      method: "POST",
      headers: hdrs({ Prefer: prefer }),
      body: JSON.stringify(row),
      signal: AbortSignal.timeout(8_000),
    });
    if (!res.ok) return null;
    const data = await res.json();
    return (Array.isArray(data) ? data[0] : data) as T ?? null;
  } catch { return null; }
}

/** INSERT single row in cache table */
export async function cacheInsert<T = any>(
  table: string,
  row: Record<string, any>,
): Promise<T | null> {
  if (!isCacheDbReady) return null;
  try {
    const res = await fetch(url(table), {
      method: "POST",
      headers: hdrs({ Prefer: "return=representation" }),
      body: JSON.stringify(row),
      signal: AbortSignal.timeout(8_000),
    });
    if (!res.ok) return null;
    const data = await res.json();
    return (Array.isArray(data) ? data[0] : data) as T ?? null;
  } catch { return null; }
}

/** DELETE rows from cache table */
export async function cacheDelete(
  table: string,
  filter: Record<string, string>,
): Promise<boolean> {
  if (!isCacheDbReady) return false;
  try {
    const res = await fetch(url(table, toQS(filter)), {
      method: "DELETE",
      headers: hdrs(),
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
    const res = await fetch(url(table, toQS(filter)), {
      method: "PATCH",
      headers: hdrs({ Prefer: "return=representation" }),
      body: JSON.stringify(data),
      signal: AbortSignal.timeout(8_000),
    });
    if (!res.ok) return null;
    const result = await res.json();
    return (Array.isArray(result) ? result[0] : result) as T ?? null;
  } catch { return null; }
}

if (isCacheDbReady) {
  console.log("[cacheClient] ✅ Supabase REST جاهز للكاش المشترك (L2 cache)");
} else {
  console.warn("[cacheClient] ⚠️ SUPABASE_URL/KEY غير موجود — الكاش L2 معطّل");
}
