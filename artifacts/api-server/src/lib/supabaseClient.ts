/**
 * supabaseClient.ts — Supabase REST API client
 * Uses fetch() to SUPABASE_URL/rest/v1 — direct pg connection is blocked on Replit.
 * Maintains the same API surface (sbSelect/sbInsert/sbUpsert/sbPatch/sbDelete).
 */

const SB_URL  = () => (process.env.SUPABASE_URL  || "").replace(/\/$/, "");
const SB_KEY  = () =>  process.env.SUPABASE_SERVICE_ROLE_KEY || "";

function headers(extra: Record<string, string> = {}): Record<string, string> {
  return {
    apikey:          SB_KEY(),
    Authorization:   `Bearer ${SB_KEY()}`,
    "Content-Type":  "application/json",
    ...extra,
  };
}

/** Convert a filter object to Supabase REST query-string params */
function toQS(
  params: Record<string, string>,
  limit?: number,
): string {
  const parts: string[] = ["select=*"];
  for (const [k, v] of Object.entries(params)) {
    if (k === "select") { parts[0] = `select=${v}`; continue; }
    parts.push(`${encodeURIComponent(k)}=${encodeURIComponent(v)}`);
  }
  if (limit) parts.push(`limit=${limit}`);
  return parts.join("&");
}

function restUrl(table: string, qs = ""): string {
  return `${SB_URL()}/rest/v1/${table}${qs ? "?" + qs : ""}`;
}

/** SELECT rows from a table */
export async function sbSelect<T = any>(
  table: string,
  params: Record<string, string> = {},
  opts: { limit?: number } = {},
): Promise<T[]> {
  if (!SB_URL() || !SB_KEY()) return [];
  try {
    const qs  = toQS(params, opts.limit);
    const res = await fetch(restUrl(table, qs), {
      headers: headers(),
      signal:  AbortSignal.timeout(10_000),
    });
    if (!res.ok) {
      const err = await res.text().catch(() => "");
      console.error(`[sb] sbSelect "${table}" ${res.status}:`, err.slice(0, 200));
      return [];
    }
    return (await res.json()) as T[];
  } catch (e: any) {
    console.error(`[sb] sbSelect "${table}" error:`, e.message);
    return [];
  }
}

/** INSERT a single row, returning the inserted row */
export async function sbInsert<T = any>(
  table: string,
  row: Record<string, any>,
): Promise<T | null> {
  if (!SB_URL() || !SB_KEY()) return null;
  try {
    const res = await fetch(restUrl(table), {
      method:  "POST",
      headers: headers({ Prefer: "return=representation" }),
      body:    JSON.stringify(row),
      signal:  AbortSignal.timeout(10_000),
    });
    if (!res.ok) {
      const err = await res.text().catch(() => "");
      console.error(`[sb] sbInsert "${table}" ${res.status}:`, err.slice(0, 200));
      return null;
    }
    const data = await res.json();
    return (Array.isArray(data) ? data[0] : data) as T ?? null;
  } catch (e: any) {
    console.error(`[sb] sbInsert "${table}" error:`, e.message);
    return null;
  }
}

/** UPSERT — INSERT with conflict resolution */
export async function sbUpsert<T = any>(
  table: string,
  row: Record<string, any>,
  onConflict?: string,
): Promise<T | null> {
  if (!SB_URL() || !SB_KEY()) return null;
  try {
    const prefer = onConflict
      ? `resolution=merge-duplicates,return=representation`
      : `resolution=ignore-duplicates,return=representation`;
    const qs = onConflict ? `on_conflict=${encodeURIComponent(onConflict)}` : "";
    const res = await fetch(restUrl(table, qs), {
      method:  "POST",
      headers: headers({ Prefer: prefer }),
      body:    JSON.stringify(row),
      signal:  AbortSignal.timeout(10_000),
    });
    if (!res.ok) {
      const err = await res.text().catch(() => "");
      console.error(`[sb] sbUpsert "${table}" ${res.status}:`, err.slice(0, 200));
      return null;
    }
    const data = await res.json();
    return (Array.isArray(data) ? data[0] : data) as T ?? null;
  } catch (e: any) {
    console.error(`[sb] sbUpsert "${table}" error:`, e.message);
    return null;
  }
}

/** UPDATE rows matching filter, returning the first updated row */
export async function sbPatch<T = any>(
  table: string,
  filter: Record<string, string>,
  data: Record<string, any>,
): Promise<T | null> {
  if (!SB_URL() || !SB_KEY()) return null;
  try {
    const qs  = toQS(filter);
    const res = await fetch(restUrl(table, qs), {
      method:  "PATCH",
      headers: headers({ Prefer: "return=representation" }),
      body:    JSON.stringify(data),
      signal:  AbortSignal.timeout(10_000),
    });
    if (!res.ok) {
      const err = await res.text().catch(() => "");
      console.error(`[sb] sbPatch "${table}" ${res.status}:`, err.slice(0, 200));
      return null;
    }
    const result = await res.json();
    return (Array.isArray(result) ? result[0] : result) as T ?? null;
  } catch (e: any) {
    console.error(`[sb] sbPatch "${table}" error:`, e.message);
    return null;
  }
}

/** DELETE rows matching filter */
export async function sbDelete(
  table: string,
  filter: Record<string, string>,
): Promise<boolean> {
  if (!SB_URL() || !SB_KEY()) return false;
  try {
    const qs  = toQS(filter);
    const res = await fetch(restUrl(table, qs), {
      method:  "DELETE",
      headers: headers(),
      signal:  AbortSignal.timeout(10_000),
    });
    if (!res.ok) {
      const err = await res.text().catch(() => "");
      console.error(`[sb] sbDelete "${table}" ${res.status}:`, err.slice(0, 200));
      return false;
    }
    return true;
  } catch (e: any) {
    console.error(`[sb] sbDelete "${table}" error:`, e.message);
    return false;
  }
}

/** Quick connectivity check — returns true if Supabase REST is reachable */
export async function checkSupabase(): Promise<boolean> {
  if (!SB_URL() || !SB_KEY()) return false;
  try {
    const res = await fetch(`${SB_URL()}/rest/v1/app_config?limit=1`, {
      headers: headers(),
      signal:  AbortSignal.timeout(8_000),
    });
    return res.ok;
  } catch { return false; }
}

export const isSupabaseReady = true;
