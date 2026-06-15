/**
 * supabaseCacheClient.ts — Supabase REST API للكاش المشترك بين جميع المستخدمين
 *
 * يُستخدم فقط لجداول الكاش: source_cache · subtitle_cache · cdn_cache · app_config
 * (لا يتصل بـ PostgreSQL لأن Replit يمنع DNS لـ Supabase DB)
 *
 * Fallback: إذا لم تكن SUPABASE_URL / SUPABASE_SERVICE_ROLE_KEY موجودتين،
 *           يُعيد نتائج فارغة بدون أخطاء (الكاش سيعتمد فقط على L1 في الذاكرة).
 */

const SB_URL = process.env.SUPABASE_URL || "";
const SB_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY || "";

export const isCacheDbReady = !!(SB_URL && SB_KEY);

const SB_HEADERS = isCacheDbReady ? {
  "apikey":        SB_KEY,
  "Authorization": `Bearer ${SB_KEY}`,
  "Content-Type":  "application/json",
  "Prefer":        "return=representation",
} : {} as Record<string, string>;

/** SELECT rows from a cache table */
export async function cacheSelect<T = any>(
  table: string,
  params: Record<string, string> = {},
  opts: { limit?: number } = {}
): Promise<T[]> {
  if (!isCacheDbReady) return [];
  try {
    const q = new URLSearchParams(params);
    if (opts.limit) q.set("limit", String(opts.limit));
    const url = `${SB_URL}/rest/v1/${table}?select=*&${q.toString()}`;
    const r = await fetch(url, { headers: SB_HEADERS, signal: AbortSignal.timeout(6_000) });
    if (!r.ok) return [];
    const data = await r.json();
    return Array.isArray(data) ? data : [];
  } catch { return []; }
}

/** UPSERT row in cache table */
export async function cacheUpsert<T = any>(
  table: string,
  row: Record<string, any>,
  onConflict?: string
): Promise<T | null> {
  if (!isCacheDbReady) return null;
  try {
    const headers = {
      ...SB_HEADERS,
      "Prefer": `resolution=merge-duplicates,return=representation${onConflict ? `,on_conflict=${onConflict}` : ""}`,
    };
    const r = await fetch(`${SB_URL}/rest/v1/${table}`, {
      method: "POST",
      headers,
      body: JSON.stringify(row),
      signal: AbortSignal.timeout(6_000),
    });
    if (!r.ok) return null;
    const data = await r.json();
    return Array.isArray(data) ? data[0] ?? null : data;
  } catch { return null; }
}

/** INSERT single row in cache table */
export async function cacheInsert<T = any>(
  table: string,
  row: Record<string, any>
): Promise<T | null> {
  if (!isCacheDbReady) return null;
  try {
    const r = await fetch(`${SB_URL}/rest/v1/${table}`, {
      method: "POST",
      headers: SB_HEADERS,
      body: JSON.stringify(row),
      signal: AbortSignal.timeout(6_000),
    });
    if (!r.ok) return null;
    const data = await r.json();
    return Array.isArray(data) ? data[0] ?? null : data;
  } catch { return null; }
}

/** DELETE rows from cache table */
export async function cacheDelete(
  table: string,
  filter: Record<string, string>
): Promise<boolean> {
  if (!isCacheDbReady) return false;
  try {
    const q = new URLSearchParams(filter);
    const r = await fetch(`${SB_URL}/rest/v1/${table}?${q.toString()}`, {
      method: "DELETE",
      headers: SB_HEADERS,
      signal: AbortSignal.timeout(6_000),
    });
    return r.ok;
  } catch { return false; }
}

/** PATCH rows in cache table */
export async function cachePatch<T = any>(
  table: string,
  filter: Record<string, string>,
  data: Record<string, any>
): Promise<T | null> {
  if (!isCacheDbReady) return null;
  try {
    const q = new URLSearchParams(filter);
    const r = await fetch(`${SB_URL}/rest/v1/${table}?${q.toString()}`, {
      method: "PATCH",
      headers: SB_HEADERS,
      body: JSON.stringify(data),
      signal: AbortSignal.timeout(6_000),
    });
    if (!r.ok) return null;
    const res = await r.json();
    return Array.isArray(res) ? res[0] ?? null : res;
  } catch { return null; }
}

if (isCacheDbReady) {
  console.log("[cacheClient] ✅ Supabase REST جاهز للكاش المشترك");
} else {
  console.warn("[cacheClient] ⚠️ SUPABASE_URL غير موجود — الكاش L2 معطّل (L1 ذاكرة فقط)");
}
