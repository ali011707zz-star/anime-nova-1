/**
 * supabaseClient.ts — يتصل بـ Supabase REST API
 * المتغيرات تُجلَب من Orkestr عند بدء التشغيل (في index.ts)
 */

function getUrl(): string {
  const u = process.env.SUPABASE_URL;
  if (!u) throw new Error("SUPABASE_URL غير موجود — تأكد من إعداد ORKESTR_API_KEY");
  return u.replace(/\/$/, "");
}

function getKey(): string {
  const k = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY;
  if (!k) throw new Error("SUPABASE_SERVICE_KEY غير موجود");
  return k;
}

export function isSupabaseReady(): boolean {
  return !!(process.env.SUPABASE_URL && (process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY));
}

function headers(): Record<string, string> {
  return {
    "Content-Type": "application/json",
    "apikey": getKey(),
    "Authorization": `Bearer ${getKey()}`,
    "Prefer": "return=representation",
  };
}

// ── بناء query string من params ───────────────────────────────────────────

function buildQuery(params: Record<string, string | number | undefined>): string {
  const parts: string[] = [];
  for (const [k, v] of Object.entries(params)) {
    if (v !== undefined && v !== null) {
      parts.push(`${encodeURIComponent(k)}=${encodeURIComponent(String(v))}`);
    }
  }
  return parts.length ? "?" + parts.join("&") : "";
}

// ── SELECT ────────────────────────────────────────────────────────────────

export async function sbSelect<T = any>(
  table: string,
  filters: Record<string, string | number | undefined> = {},
  opts: { limit?: number; select?: string } = {},
): Promise<T[]> {
  try {
    const params: Record<string, string | number | undefined> = {
      ...filters,
      select: opts.select || "*",
      limit: opts.limit || filters.limit || 200,
    };
    const url = `${getUrl()}/rest/v1/${table}${buildQuery(params)}`;
    const res = await fetch(url, { headers: headers(), signal: AbortSignal.timeout(10000) });
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

// ── INSERT ────────────────────────────────────────────────────────────────

export async function sbInsert<T = any>(
  table: string,
  row: Record<string, any>,
): Promise<T | null> {
  try {
    const url = `${getUrl()}/rest/v1/${table}`;
    const res = await fetch(url, {
      method: "POST",
      headers: headers(),
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

// ── UPSERT ────────────────────────────────────────────────────────────────

export async function sbUpsert<T = any>(
  table: string,
  row: Record<string, any>,
  onConflict?: string,
): Promise<T | null> {
  try {
    const h = { ...headers(), "Prefer": `resolution=merge-duplicates,return=representation` };
    const qs = onConflict ? `?on_conflict=${encodeURIComponent(onConflict)}` : "";
    const url = `${getUrl()}/rest/v1/${table}${qs}`;
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

// ── PATCH (UPDATE) ────────────────────────────────────────────────────────

export async function sbPatch<T = any>(
  table: string,
  filter: Record<string, string | number>,
  data: Record<string, any>,
): Promise<T | null> {
  try {
    const params: Record<string, string | number | undefined> = {};
    for (const [k, v] of Object.entries(filter)) params[k] = String(v);
    const url = `${getUrl()}/rest/v1/${table}${buildQuery(params)}`;
    const res = await fetch(url, {
      method: "PATCH",
      headers: headers(),
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

// ── DELETE ────────────────────────────────────────────────────────────────

export async function sbDelete(
  table: string,
  filter: Record<string, string | number>,
): Promise<boolean> {
  try {
    const params: Record<string, string | number | undefined> = {};
    for (const [k, v] of Object.entries(filter)) params[k] = String(v);
    const url = `${getUrl()}/rest/v1/${table}${buildQuery(params)}`;
    const res = await fetch(url, {
      method: "DELETE",
      headers: headers(),
      signal: AbortSignal.timeout(10000),
    });
    return res.ok;
  } catch (e: any) {
    console.error(`[sb] sbDelete "${table}":`, e.message);
    return false;
  }
}

// ── CHECK ─────────────────────────────────────────────────────────────────

export async function checkSupabase(): Promise<boolean> {
  try {
    const url = `${getUrl()}/rest/v1/app_config?select=key&limit=1`;
    const res = await fetch(url, { headers: headers(), signal: AbortSignal.timeout(5000) });
    return res.ok;
  } catch { return false; }
}
