/**
 * sourceCache.ts — نظام cache ذكي متعدد الطبقات للمصادر
 *
 * L1: Map في الذاكرة (instant, يُفقد عند restart)
 * L2: Supabase REST API (دائم، ينجو من restart)
 *
 * Smart TTL:
 *  - يقرأ validto= / expires= من الروابط تلقائياً
 *  - mega/vidmoly/workers.dev روابط دائمة → TTL طويل جداً
 *  - sendvid/share4max روابط مؤقتة → TTL 3-4 ساعات
 */

// ── Supabase REST config ──
const SUPA_URL = process.env["SUPABASE_URL"] ?? "";
const SUPA_KEY = process.env["SUPABASE_SERVICE_ROLE_KEY"] ?? "";
const SUPA_HEADERS = {
  "apikey": SUPA_KEY,
  "Authorization": `Bearer ${SUPA_KEY}`,
  "Content-Type": "application/json",
  "Prefer": "resolution=merge-duplicates,return=minimal",
};
const USE_SUPABASE = !!(SUPA_URL && SUPA_KEY);

// ── TTL افتراضي لكل موقع (بالميلي ثانية) ──
const SITE_TTL: Record<string, number> = {
  animephoenix: 36 * 3_600_000,  // workers.dev CDN — مستقر جداً
  animedar:     24 * 3_600_000,  // MEGA links — شبه دائمة
  mitanime:      8 * 3_600_000,
  animeify:      8 * 3_600_000,
  okanime:       5 * 3_600_000,
  animetime:     5 * 3_600_000,
  ristoanime:    5 * 3_600_000,
  shahiid:       3 * 3_600_000,  // sendvid/share4max — ~4 ساعات
  animelek:      3 * 3_600_000,  // sendvid validto ~4h
  toonstream:  1.5 * 3_600_000,  // HLS CDN expires ~2h
};
const DEFAULT_TTL = 4 * 3_600_000;

// روابط دائمة لا تنتهي صلاحيتها
const PERMANENT_URL_PATTERNS = [
  /mega\.nz\/embed/i,
  /vidmoly\.(to|biz)/i,
  /\.workers\.dev\//i,
  /drive\.google\.com/i,
];

// ── قراءة التاريخ الفعلي للانتهاء من معامل الرابط ──
function parseUrlExpiry(url: string): number | null {
  // روابط دائمة → TTL لا نهائي (7 أيام)
  for (const pat of PERMANENT_URL_PATTERNS) {
    if (pat.test(url)) return Date.now() + 7 * 24 * 3_600_000;
  }
  // SendVid: ?validto=1234567890
  const vt = url.match(/[?&]validto=(\d{10})\b/);
  if (vt) return parseInt(vt[1]) * 1000;
  // HLS CDN: ?expires=1234567890
  const ex = url.match(/[?&]expires=(\d{10})\b/);
  if (ex) return parseInt(ex[1]) * 1000;
  // ميلي ثانية
  const exMs = url.match(/[?&]expires=(\d{13})\b/);
  if (exMs) return parseInt(exMs[1]);
  return null;
}

export function computeExpiry(site: string, sources: any[]): number {
  const siteDefault = Date.now() + (SITE_TTL[site] ?? DEFAULT_TTL);
  let minExpiry = siteDefault;

  for (const src of sources) {
    for (const rawField of [src.directUrl, src.url] as (string | undefined)[]) {
      if (!rawField) continue;
      let url = rawField;
      if (url.startsWith("/api/")) {
        try {
          const u = new URLSearchParams(url.split("?")[1] ?? "");
          url = decodeURIComponent(u.get("url") ?? "");
        } catch { continue; }
      }
      const exp = parseUrlExpiry(url);
      if (exp && exp > Date.now() + 60_000) {
        const safe = exp - 10 * 60_000;
        if (safe < minExpiry) minExpiry = safe;
      }
    }
  }
  return minExpiry;
}

// ── L1: ذاكرة العملية ──
const l1 = new Map<string, { sources: any[]; expiresAt: number }>();

setInterval(() => {
  const now = Date.now();
  for (const [k, v] of l1) { if (now > v.expiresAt) l1.delete(k); }
}, 10 * 60_000);

// ── L2: Supabase REST helpers ──
async function supabaseGet(cacheKey: string): Promise<{ sources: any[]; expires_at: number } | null> {
  if (!USE_SUPABASE) return null;
  try {
    const r = await fetch(
      `${SUPA_URL}/rest/v1/source_cache?cache_key=eq.${encodeURIComponent(cacheKey)}&select=sources,expires_at&limit=1`,
      { headers: SUPA_HEADERS, signal: AbortSignal.timeout(4000) }
    );
    if (!r.ok) return null;
    const rows = await r.json() as any[];
    if (!rows?.length) return null;
    return { sources: rows[0].sources, expires_at: Number(rows[0].expires_at) };
  } catch { return null; }
}

async function supabaseUpsert(cacheKey: string, site: string, sources: any[], expiresAt: number): Promise<void> {
  if (!USE_SUPABASE) return;
  try {
    await fetch(`${SUPA_URL}/rest/v1/source_cache`, {
      method: "POST",
      headers: SUPA_HEADERS,
      body: JSON.stringify({
        cache_key: cacheKey,
        site,
        sources,
        fetched_at: Date.now(),
        expires_at: expiresAt,
      }),
      signal: AbortSignal.timeout(5000),
    });
  } catch { /* silent */ }
}

async function supabaseDeleteExpired(): Promise<void> {
  if (!USE_SUPABASE) return;
  try {
    await fetch(
      `${SUPA_URL}/rest/v1/source_cache?expires_at=lt.${Date.now()}`,
      { method: "DELETE", headers: SUPA_HEADERS, signal: AbortSignal.timeout(5000) }
    );
  } catch { /* silent */ }
}

// تنظيف كل ساعة
setInterval(supabaseDeleteExpired, 3_600_000);

// log عند بدء التشغيل
if (USE_SUPABASE) {
  console.log("[sourceCache] Supabase متصل ✓ — cache دائم مفعّل");
} else {
  console.log("[sourceCache] Supabase غير مُعدَّل — L1 فقط");
}

// ── صنع مفتاح الـ Cache ──
export function makeSourceCacheKey(site: string, title: string, ep: number): string {
  const norm = title
    .toLowerCase()
    .replace(/[^a-z0-9 ]/g, " ")
    .trim()
    .split(/\s+/)
    .slice(0, 5)
    .join("-");
  return `${site}:${norm}:${ep}`;
}

// ── قراءة من Cache (L1 → L2) ──
export async function getFromSourceCache(
  key: string
): Promise<{ sources: any[]; expiresAt: number } | null> {
  // L1
  const m = l1.get(key);
  if (m && Date.now() < m.expiresAt) return m;
  l1.delete(key);

  // L2 Supabase
  const row = await supabaseGet(key);
  if (!row) return null;

  const expiresAt = row.expires_at;
  if (Date.now() > expiresAt) {
    // منتهٍ → احذف بشكل غير متزامن
    fetch(`${SUPA_URL}/rest/v1/source_cache?cache_key=eq.${encodeURIComponent(key)}`,
      { method: "DELETE", headers: SUPA_HEADERS }).catch(() => {});
    return null;
  }

  // ارفع للـ L1
  l1.set(key, { sources: row.sources, expiresAt });
  return { sources: row.sources, expiresAt };
}

// ── كتابة في Cache (L1 + L2) ──
export async function setSourceCache(
  key: string,
  site: string,
  sources: any[]
): Promise<void> {
  if (!sources.length) return;
  const expiresAt = computeExpiry(site, sources);

  // L1 فوراً
  l1.set(key, { sources, expiresAt });

  // L2 بشكل غير متزامن
  supabaseUpsert(key, site, sources, expiresAt);
}

// ── هل يحتاج تجديد في الخلفية؟ ──
export function shouldRefreshCache(expiresAt: number): boolean {
  return expiresAt - Date.now() < 20 * 60_000;
}
