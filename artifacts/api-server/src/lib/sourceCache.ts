/**
 * sourceCache.ts — نظام cache ذكي متعدد الطبقات للمصادر
 *
 * L1: Map في الذاكرة (instant, يُفقد عند restart)
 * L2: Supabase REST API (دائم، ينجو من restart)
 *
 * Smart TTL per-site:
 *  ┌─────────────────┬────────┬──────────────────────────────────────────┐
 *  │ Site            │ TTL    │ سبب                                      │
 *  ├─────────────────┼────────┼──────────────────────────────────────────┤
 *  │ animephoenix    │ 36h    │ workers.dev CDN — مستقر جداً             │
 *  │ animedar        │ 24h    │ MEGA links — شبه دائمة                   │
 *  │ kawaii          │ 24h    │ video.kawaii-anime.com — CORS* مستقر     │
 *  │ aflaam          │ 24h    │ af3/af1.downet.net — MP4 مباشر ثابت     │
 *  │ stardima        │ 12h    │ HLS من DooPlay                           │
 *  │ mitanime        │  8h    │ vidcache.net CDN                         │
 *  │ animeify        │  8h    │ SendVid / MediaFire                      │
 *  │ seepanel        │  8h    │ hlswish/vidspeed                         │
 *  │ okanime         │  5h    │ HLS OkAnime CDN                          │
 *  │ animetime       │  5h    │ yaviidcdn.com HLS                        │
 *  │ ristoanime      │  5h    │ HLS                                      │
 *  │ starcima        │  6h    │ vidzee CDN — HLS مع expires=             │
 *  │ vyla            │  4h    │ Vyla proxy m3u8                          │
 *  │ topcinemaa      │  4h    │ WP AJAX → embeds                         │
 *  │ arabseed        │  4h    │ WP REST → iframes                        │
 *  │ animeday_anim   │  4h    │ anime-day animation section              │
 *  │ 2embed          │  4h    │ streamwish/filemoon extraction results   │
 *  │ shahiid         │  3h    │ sendvid validto ~4h (safe margin)        │
 *  │ animelek        │  3h    │ sendvid validto ~4h                      │
 *  │ toonstream      │1.5h    │ HLS CDN expires ~2h                      │
 *  └─────────────────┴────────┴──────────────────────────────────────────┘
 */

const SUPA_URL = process.env["SUPABASE_URL"] ?? "";
const SUPA_KEY = process.env["SUPABASE_SERVICE_ROLE_KEY"] ?? "";
const SUPA_HEADERS = {
  "apikey": SUPA_KEY,
  "Authorization": `Bearer ${SUPA_KEY}`,
  "Content-Type": "application/json",
  "Prefer": "resolution=merge-duplicates,return=minimal",
};
const USE_SUPABASE = !!(SUPA_URL && SUPA_KEY);

// ── TTL بالميلي ثانية لكل موقع ──────────────────────────────────
export const SITE_TTL: Record<string, number> = {
  // مصادر أنمي
  animephoenix: 36 * 3_600_000,
  animedar:     24 * 3_600_000,
  kawaii:       24 * 3_600_000,
  animeify:      8 * 3_600_000,
  mitanime:      8 * 3_600_000,
  seepanel:      8 * 3_600_000,
  okanime:       5 * 3_600_000,
  animetime:     5 * 3_600_000,
  ristoanime:    5 * 3_600_000,
  anikoto:       5 * 3_600_000,
  anineko:       5 * 3_600_000,
  animewitcher:  5 * 3_600_000,
  animeday:      4 * 3_600_000,
  arabseed:      4 * 3_600_000,
  shahiid:       3 * 3_600_000,
  animelek:      3 * 3_600_000,
  toonstream:  1.5 * 3_600_000,
  // مصادر أنيميشن
  starcima:      6 * 3_600_000,
  aflaam:       24 * 3_600_000,
  stardima:     12 * 3_600_000,
  vyla:          4 * 3_600_000,
  topcinemaa:    4 * 3_600_000,
  animeday_anim: 4 * 3_600_000,
  "2embed":      4 * 3_600_000,
};
const DEFAULT_TTL = 4 * 3_600_000;

// روابط دائمة لا تنتهي صلاحيتها
const PERMANENT_URL_PATTERNS = [
  /mega\.nz\/embed/i,
  /vidmoly\.(to|biz)/i,
  /\.workers\.dev\//i,
  /drive\.google\.com/i,
  /af[13]\.downet\.net/i,           // aflaam CDN
  /video\.kawaii-anime\.com/i,      // kawaii CDN
];

// ── قراءة التاريخ الفعلي للانتهاء من معامل الرابط ──
function parseUrlExpiry(url: string): number | null {
  for (const pat of PERMANENT_URL_PATTERNS) {
    if (pat.test(url)) return Date.now() + 7 * 24 * 3_600_000;
  }
  // SendVid: ?validto=1234567890
  const vt = url.match(/[?&]validto=(\d{10})\b/);
  if (vt) return parseInt(vt[1]) * 1000;
  // HLS CDN / Vyla: ?expires=1234567890
  const ex = url.match(/[?&]expires=(\d{10})\b/);
  if (ex) return parseInt(ex[1]) * 1000;
  // بالميلي ثانية
  const exMs = url.match(/[?&]expires=(\d{13})\b/);
  if (exMs) return parseInt(exMs[1]);
  // StarCima vidzee: exp= in URL
  const starExp = url.match(/[?&]exp=(\d{10})\b/);
  if (starExp) return parseInt(starExp[1]) * 1000;
  return null;
}

export function computeExpiry(site: string, sources: any[]): number {
  const siteDefault = Date.now() + (SITE_TTL[site] ?? DEFAULT_TTL);
  let minExpiry = siteDefault;

  for (const src of sources) {
    for (const rawField of [
      src.directUrl, src.url, src.proxyUrl,
    ] as (string | undefined)[]) {
      if (!rawField) continue;
      let url = rawField;
      // فك ترميز proxy URLs
      if (url.startsWith("/api/")) {
        try {
          const u = new URLSearchParams(url.split("?")[1] ?? "");
          url = decodeURIComponent(u.get("url") ?? "");
        } catch { continue; }
      }
      const exp = parseUrlExpiry(url);
      if (exp && exp > Date.now() + 60_000) {
        const safe = exp - 10 * 60_000; // هامش أمان 10 دقائق
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
        cache_key:  cacheKey,
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

setInterval(supabaseDeleteExpired, 3_600_000);

if (USE_SUPABASE) {
  console.log("[sourceCache] Supabase متصل ✓ — L2 cache دائم مفعّل");
} else {
  console.log("[sourceCache] Supabase غير مُعدَّل — L1 (ذاكرة) فقط");
}

// ── صنع مفتاح cache لمصادر الأنمي ──
export function makeSourceCacheKey(site: string, title: string, ep: number): string {
  const norm = title
    .toLowerCase()
    .replace(/[^a-z0-9 ]/g, " ")
    .trim()
    .split(/\s+/)
    .slice(0, 5)
    .join("-");
  return `${site}:${norm}:ep${ep}`;
}

// ── صنع مفتاح cache لمصادر الأنيميشن ──
export function makeAnimCacheKey(site: string, tmdbId: string, type: string, season: number, ep: number): string {
  const key = type === "movie"
    ? `${site}:anim-movie:${tmdbId}`
    : `${site}:anim-tv:${tmdbId}:s${season}e${ep}`;
  return key;
}

// ── قراءة من Cache (L1 → L2) ──
export async function getFromSourceCache(
  key: string
): Promise<{ sources: any[]; expiresAt: number } | null> {
  // L1 أولاً (< 1ms)
  const m = l1.get(key);
  if (m && Date.now() < m.expiresAt) return m;
  l1.delete(key);

  // L2 Supabase
  const row = await supabaseGet(key);
  if (!row) return null;

  const expiresAt = row.expires_at;
  if (Date.now() > expiresAt) {
    fetch(`${SUPA_URL}/rest/v1/source_cache?cache_key=eq.${encodeURIComponent(key)}`,
      { method: "DELETE", headers: SUPA_HEADERS }).catch(() => {});
    return null;
  }

  l1.set(key, { sources: row.sources, expiresAt });
  return { sources: row.sources, expiresAt };
}

// ── كتابة في Cache (L1 فوراً + L2 بالخلفية) ──
export async function setSourceCache(
  key: string,
  site: string,
  sources: any[]
): Promise<void> {
  if (!sources.length) return;
  const expiresAt = computeExpiry(site, sources);

  l1.set(key, { sources, expiresAt });
  supabaseUpsert(key, site, sources, expiresAt);
}

// ── هل يحتاج تجديد في الخلفية (آخر 20 دقيقة)؟ ──
export function shouldRefreshCache(expiresAt: number): boolean {
  return expiresAt - Date.now() < 20 * 60_000;
}

// ── نظرة عامة على حجم الكاش (للتشخيص) ──
export function getCacheStats(): { l1Size: number; supabaseEnabled: boolean } {
  return { l1Size: l1.size, supabaseEnabled: USE_SUPABASE };
}
