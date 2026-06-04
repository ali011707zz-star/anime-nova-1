/**
 * sourceCache.ts — نظام cache ذكي متعدد الطبقات للمصادر
 *
 * L1: Map في الذاكرة (instant, يُفقد عند restart)
 * L2: PostgreSQL (دائم، ينجو من restart، مشترك بين الـ workers)
 *
 * Smart TTL:
 *  - يقرأ validto= / expires= من الروابط تلقائياً
 *  - كل موقع له TTL افتراضي مختلف حسب طول صلاحية روابطه
 *  - خلفية تجديد تلقائي عندما يتبقى أقل من 20 دقيقة
 */

import pg from "pg";
const { Pool } = pg;

// ── DB connection ──
const pool = new Pool({ connectionString: process.env["DATABASE_URL"] });

// أنشئ الجدول عند بدء التشغيل
(async () => {
  try {
    await pool.query(`
      CREATE TABLE IF NOT EXISTS source_cache (
        cache_key  TEXT PRIMARY KEY,
        site       TEXT NOT NULL,
        sources    JSONB NOT NULL,
        fetched_at BIGINT NOT NULL,
        expires_at BIGINT NOT NULL
      );
      CREATE INDEX IF NOT EXISTS idx_sc_expires ON source_cache(expires_at);
      CREATE INDEX IF NOT EXISTS idx_sc_site    ON source_cache(site);
    `);
    console.log("[sourceCache] جدول source_cache جاهز ✓");
  } catch (e: any) {
    console.warn("[sourceCache] تحذير جدول:", e?.message);
  }
})();

// ── TTL افتراضي لكل موقع (بالميلي ثانية) ──
// مبني على متوسط مدة صلاحية روابط كل موقع
const SITE_TTL: Record<string, number> = {
  animephoenix: 36 * 3_600_000,  // workers.dev CDN — مستقر جداً
  animedar:     12 * 3_600_000,  // MEGA links — شبه دائمة
  mitanime:      8 * 3_600_000,
  animeify:      8 * 3_600_000,
  okanime:       5 * 3_600_000,
  animetime:     5 * 3_600_000,
  ristoanime:    5 * 3_600_000,
  shahiid:       3 * 3_600_000,  // sendvid/share4max — ~4 ساعات
  animelek:      3 * 3_600_000,  // sendvid validto ~4h
  toonstream:    1.5 * 3_600_000, // HLS CDN expires ~2h
};
const DEFAULT_TTL = 4 * 3_600_000;

// ── قراءة التاريخ الفعلي للانتهاء من معامل الرابط ──
function parseUrlExpiry(url: string): number | null {
  // SendVid: ?validto=1234567890 (Unix ثوانٍ، 10 أرقام)
  const vt = url.match(/[?&]validto=(\d{10})\b/);
  if (vt) return parseInt(vt[1]) * 1000;

  // HLS CDN: ?expires=1234567890 (Unix ثوانٍ، 10 أرقام)
  const ex = url.match(/[?&]expires=(\d{10})\b/);
  if (ex) return parseInt(ex[1]) * 1000;

  // بعض الـ CDN تستخدم ميلي ثانية (13 رقم)
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

      // إذا الرابط عبر video-proxy → فك تشفير الرابط الأصلي
      let url = rawField;
      if (url.startsWith("/api/")) {
        try {
          const u = new URLSearchParams(url.split("?")[1] ?? "");
          url = decodeURIComponent(u.get("url") ?? "");
        } catch { /* ignore */ }
      }

      const exp = parseUrlExpiry(url);
      if (exp && exp > Date.now() + 60_000) {
        // 10 دقائق هامش قبل الانتهاء الحقيقي
        const safe = exp - 10 * 60_000;
        if (safe < minExpiry) minExpiry = safe;
      }
    }
  }

  return minExpiry;
}

// ── L1: ذاكرة العملية ──
const l1 = new Map<string, { sources: any[]; expiresAt: number }>();

// تنظيف L1 كل 10 دقائق
setInterval(() => {
  const now = Date.now();
  for (const [k, v] of l1) { if (now > v.expiresAt) l1.delete(k); }
}, 10 * 60_000);

// تنظيف L2 (قاعدة البيانات) من السجلات المنتهية كل ساعة
setInterval(async () => {
  try {
    const res = await pool.query(
      "DELETE FROM source_cache WHERE expires_at < $1 RETURNING cache_key",
      [Date.now()]
    );
    if (res.rowCount && res.rowCount > 0) {
      console.log(`[sourceCache] حُذف ${res.rowCount} سجل منتهٍ`);
    }
  } catch { /* تجاهل أخطاء التنظيف */ }
}, 3_600_000);

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

  // L2
  try {
    const res = await pool.query(
      "SELECT sources, expires_at FROM source_cache WHERE cache_key = $1",
      [key]
    );
    if (!res.rows.length) return null;

    const { sources, expires_at } = res.rows[0];
    const expiresAt = Number(expires_at);
    if (Date.now() > expiresAt) {
      // منتهٍ → احذف من DB
      pool.query("DELETE FROM source_cache WHERE cache_key = $1", [key]).catch(() => {});
      return null;
    }

    // ارفع للـ L1
    l1.set(key, { sources, expiresAt });
    return { sources, expiresAt };
  } catch {
    return null;
  }
}

// ── كتابة في Cache (L1 + L2) ──
export async function setSourceCache(
  key: string,
  site: string,
  sources: any[]
): Promise<void> {
  if (!sources.length) return;
  const expiresAt = computeExpiry(site, sources);
  const now = Date.now();

  // L1 فوراً
  l1.set(key, { sources, expiresAt });

  // L2 بشكل غير متزامن (لا تنتظر)
  pool
    .query(
      `INSERT INTO source_cache (cache_key, site, sources, fetched_at, expires_at)
       VALUES ($1, $2, $3::jsonb, $4, $5)
       ON CONFLICT (cache_key) DO UPDATE
         SET sources = $3::jsonb, fetched_at = $4, expires_at = $5`,
      [key, site, JSON.stringify(sources), now, expiresAt]
    )
    .catch((e: any) => console.warn("[sourceCache] خطأ كتابة:", e?.message));
}

// ── هل يحتاج تجديد في الخلفية؟ ──
// يُعيد true إذا تبقى أقل من 20 دقيقة
export function shouldRefreshCache(expiresAt: number): boolean {
  return expiresAt - Date.now() < 20 * 60_000;
}
