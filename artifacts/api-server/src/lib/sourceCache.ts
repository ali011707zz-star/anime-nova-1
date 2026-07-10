/**
 * sourceCache.ts — نظام cache ذكي متعدد الطبقات للمصادر
 *
 * L1: Map في الذاكرة (instant, يُفقد عند restart)
 * L2: Supabase REST API (دائم، مشترك بين جميع المستخدمين — لا يحتاج DNS لـ Supabase PostgreSQL)
 *
 * جداول الكاش مخزَّنة في Supabase:
 *   source_cache   — روابط الحلقات (مشترك بين الجميع)
 *   subtitle_cache — ترجمات الحلقات (مشترك + دائم)
 *   cdn_cache      — مانيفيست HLS المؤقت
 */

import { cacheSelect, cacheUpsert, cacheDelete, isCacheDbReady } from "./supabaseCacheClient.js";

// ── TTL بالميلي ثانية لكل موقع ──────────────────────────────────
export const SITE_TTL: Record<string, number> = {
  animephoenix: 36 * 3_600_000,
  animedar:     24 * 3_600_000,
  kawaii:       24 * 3_600_000,
  animeify:      45 * 60_000,    // MediaFire CDN URLs expire ~1h → 45min TTL
  mitanime:      8 * 3_600_000,
  seepanel:      8 * 3_600_000,
  okanime:       5 * 3_600_000,
  animetime:     5 * 3_600_000,
  ristoanime:    5 * 3_600_000,
  anikoto:       5 * 3_600_000,
  anineko:       5 * 3_600_000,
  hianime:       5 * 3_600_000,
  animewitcher:  45 * 60_000,    // Streamtape/VTube URLs expire fast → 45min TTL
  animeday:      4 * 3_600_000,
  arabseed:      4 * 3_600_000,
  shahiid:       3 * 3_600_000,
  animelek:      3 * 3_600_000,
  toonstream:  1.5 * 3_600_000,
  starcima:      6 * 3_600_000,
  mycima:        4 * 3_600_000,
  mycima_anim:   4 * 3_600_000,
  aflaam:       24 * 3_600_000,
  stardima:     12 * 3_600_000,
  vyla:          4 * 3_600_000,
  videasy:        2 * 3_600_000,
  videasy3:       2 * 3_600_000,
  videasy_anim:   2 * 3_600_000,
  vidlink_encdec: 2 * 3_600_000,
  vidlink_anim:   2 * 3_600_000,
  vyla_anim:      4 * 3_600_000,
  topcinemaa:     4 * 3_600_000,
  animeday_anim:  4 * 3_600_000,
  "2embed":       4 * 3_600_000,
  moviebox:       10 * 60_000,    // CDN URLs مُوقَّعة بـ &t= تنتهي بسرعة → 10 دقائق فقط
  moviebox_anim:  10 * 60_000,    // نفس السبب — Animation version
};
const DEFAULT_TTL = 4 * 3_600_000;

const PERMANENT_URL_PATTERNS = [
  /mega\.nz\/embed/i,
  /vidmoly\.(to|biz)/i,
  /\.workers\.dev\//i,
  /drive\.google\.com/i,
  /af[13]\.downet\.net/i,
  /video\.kawaii-anime\.com/i,
];

function parseUrlExpiry(url: string): number | null {
  for (const pat of PERMANENT_URL_PATTERNS) {
    if (pat.test(url)) return Date.now() + 7 * 24 * 3_600_000;
  }
  const vt = url.match(/[?&]validto=(\d{10})\b/);
  if (vt) return parseInt(vt[1]) * 1000;
  const ex = url.match(/[?&]expires=(\d{10})\b/);
  if (ex) return parseInt(ex[1]) * 1000;
  const exMs = url.match(/[?&]expires=(\d{13})\b/);
  if (exMs) return parseInt(exMs[1]);
  const starExp = url.match(/[?&]exp=(\d{10})\b/);
  if (starExp) return parseInt(starExp[1]) * 1000;
  return null;
}

export function computeExpiry(site: string, sources: any[]): number {
  const siteDefault = Date.now() + (SITE_TTL[site] ?? DEFAULT_TTL);
  let minExpiry = siteDefault;

  for (const src of sources) {
    for (const rawField of [src.directUrl, src.url, src.proxyUrl] as (string | undefined)[]) {
      if (!rawField) continue;
      let url = rawField;
      if (url.startsWith("/api/")) {
        try {
          const u = new URLSearchParams(url.split("?")[1] ?? "");
          const inner = u.get("url");
          if (!inner) continue;
          url = inner;
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

// ── L1: ذاكرة العملية (سريعة، تُفقد عند restart) ──
const l1 = new Map<string, { sources: any[]; expiresAt: number }>();

setInterval(() => {
  const now = Date.now();
  for (const [k, v] of l1) { if (now > v.expiresAt) l1.delete(k); }
}, 10 * 60_000);

// ── L2: Supabase REST (مشترك بين جميع المستخدمين، دائم) ──
async function sbGet(cacheKey: string): Promise<{ sources: any[]; expiresAt: number } | null> {
  if (!isCacheDbReady()) return null;
  try {
    const rows = await cacheSelect("source_cache", { cache_key: `eq.${cacheKey}` }, { limit: 1 });
    if (!rows[0]) return null;
    // expires_at is stored as ISO timestamp — convert back to milliseconds epoch
    const expMs = typeof rows[0].expires_at === "number"
      ? rows[0].expires_at
      : new Date(rows[0].expires_at).getTime();
    return { sources: rows[0].sources as any[], expiresAt: expMs };
  } catch { return null; }
}

async function sbUpsertCache(cacheKey: string, site: string, sources: any[], expiresAt: number): Promise<void> {
  if (!isCacheDbReady()) return;
  const row = {
    cache_key:  cacheKey,
    site,
    // deep-clone to strip any undefined/non-serializable values
    sources: JSON.parse(JSON.stringify(sources)),
    fetched_at: Date.now(),
    // TIMESTAMPTZ columns expect ISO string; legacy Supabase deployments may have BIGINT
    expires_at: new Date(expiresAt).toISOString() as any,
  };
  try {
    await cacheUpsert("source_cache", row, "cache_key");
  } catch (err: any) {
    // Retry with ms-epoch number in case remote DB still has expires_at as BIGINT (legacy schema)
    const isBigintError = err?.message?.includes("bigint") || err?.code === "22P02";
    if (isBigintError) {
      try {
        await cacheUpsert("source_cache", { ...row, expires_at: expiresAt }, "cache_key");
      } catch { /* silent on retry */ }
    } else {
      console.error(`[sourceCache] upsert failed for ${site}:${cacheKey}`, err instanceof Error ? err.message : err);
    }
  }
}

async function sbDeleteExpired(): Promise<void> {
  if (!isCacheDbReady()) return;
  try {
    // Both Supabase and local PG use TIMESTAMPTZ — compare ISO string
    await cacheDelete("source_cache", { expires_at: `lt.${new Date().toISOString()}` });
  } catch { /* silent */ }
}

setInterval(sbDeleteExpired, 3_600_000);

setTimeout(() => {
  if (isCacheDbReady()) {
    console.log("[sourceCache] ✅ Supabase L2 cache مفعّل — الروابط مشتركة بين جميع المستخدمين");
  } else {
    console.warn("[sourceCache] ⚠️ Supabase غير مُهيَّأ — L2 cache معطّل");
  }
}, 600);

// ── صنع مفتاح cache ──
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

export function makeAnimCacheKey(site: string, tmdbId: string, type: string, season: number, ep: number): string {
  return type === "movie"
    ? `${site}:anim-movie:${tmdbId}`
    : `${site}:anim-tv:${tmdbId}:s${season}e${ep}`;
}

// ── قراءة من Cache (L1 → L2) ──
export async function getFromSourceCache(
  key: string
): Promise<{ sources: any[]; expiresAt: number; stale?: boolean } | null> {
  // L1 أولاً (أسرع)
  const m = l1.get(key);
  if (m && Date.now() < m.expiresAt) return m;
  l1.delete(key);

  // L2: Supabase
  const row = await sbGet(key);
  if (!row) return null;

  if (Date.now() > row.expiresAt) {
    // بيانات منتهية الصلاحية — أعدها مع علامة stale لإعادة الجلب
    return { sources: row.sources, expiresAt: row.expiresAt, stale: true };
  }

  // خزِّن في L1 لتسريع الطلبات القادمة
  l1.set(key, { sources: row.sources, expiresAt: row.expiresAt });
  return { sources: row.sources, expiresAt: row.expiresAt };
}

// ── كتابة في Cache (L1 + L2) ──
export async function setSourceCache(
  key: string,
  site: string,
  sources: any[]
): Promise<void> {
  if (!sources.length) return;
  const expiresAt = computeExpiry(site, sources);
  // L1 فوري
  l1.set(key, { sources, expiresAt });
  // L2 Supabase: fire-and-forget (لا يؤخر الاستجابة)
  sbUpsertCache(key, site, sources, expiresAt);
}

export function shouldRefreshCache(expiresAt: number): boolean {
  return expiresAt - Date.now() < 45 * 60_000;
}

export function getCacheStats(): { l1Size: number; supabaseEnabled: boolean } {
  return { l1Size: l1.size, supabaseEnabled: isCacheDbReady() };
}

// ══════════════════════════════════════════════════════════════════
//  CDN manifest cache — L1 (memory) + L2 (Supabase)
//  يُخزَّن مانيفيست HLS مؤقتاً لتسريع مشاهدات متعددة في نفس الوقت
// ══════════════════════════════════════════════════════════════════
const CDN_MANIFEST_TTL = 15 * 60_000;

const cdnL1 = new Map<string, { content: string; ct: string; expiresAt: number }>();

setInterval(() => {
  const now = Date.now();
  for (const [k, v] of cdnL1) { if (now > v.expiresAt) cdnL1.delete(k); }
}, 5 * 60_000);

async function cdnSbGet(key: string): Promise<{ content: string; ct: string } | null> {
  if (!isCacheDbReady()) return null;
  try {
    const rows = await cacheSelect("cdn_cache", { cache_key: `eq.${key}` }, { limit: 1 });
    if (!rows[0]) return null;
    if (Date.now() > Number(rows[0].expires_at)) return null;
    return { content: rows[0].content, ct: rows[0].ct };
  } catch { return null; }
}

async function cdnSbUpsert(key: string, content: string, ct: string, expiresAt: number): Promise<void> {
  if (!isCacheDbReady()) return;
  try {
    await cacheUpsert("cdn_cache", {
      cache_key:  key,
      content,
      ct,
      fetched_at: Date.now(),
      expires_at: expiresAt,
    }, "cache_key");
  } catch { /* silent */ }
}

setInterval(async () => {
  if (!isCacheDbReady()) return;
  try { await cacheDelete("cdn_cache", { expires_at: `lt.${Date.now()}` }); } catch {}
}, 60 * 60_000);

export async function cdnManifestGet(key: string): Promise<{ content: string; ct: string } | null> {
  const m = cdnL1.get(key);
  if (m && Date.now() < m.expiresAt) return { content: m.content, ct: m.ct };
  cdnL1.delete(key);
  const sb = await cdnSbGet(key);
  if (sb) {
    cdnL1.set(key, { content: sb.content, ct: sb.ct, expiresAt: Date.now() + CDN_MANIFEST_TTL });
  }
  return sb;
}

export function cdnManifestSet(key: string, content: string, ct: string): void {
  const expiresAt = Date.now() + CDN_MANIFEST_TTL;
  cdnL1.set(key, { content, ct, expiresAt });
  cdnSbUpsert(key, content, ct, expiresAt); // fire-and-forget
}

// ══════════════════════════════════════════════════════════════════
//  Subtitle/Translation cache — L1 (memory) + L2 (Supabase)
//  ترجمات الحلقات تُخزَّن 30 يوماً في Supabase (مشترك بين الجميع)
// ══════════════════════════════════════════════════════════════════
const SUB_L1 = new Map<string, { cues: any[]; ts: number }>();
const SUB_L1_TTL = 2 * 3_600_000; // ساعتان في الذاكرة
const SUB_DB_TTL = 30 * 24 * 3_600_000; // 30 يوم في Supabase

export async function getSubtitleCache(
  cacheKey: string
): Promise<Array<{ timing: string; text: string }> | null> {
  // L1: ذاكرة (سريع جداً)
  const mem = SUB_L1.get(cacheKey);
  if (mem && Date.now() - mem.ts < SUB_L1_TTL) return mem.cues;

  // L2: Supabase (مشترك)
  if (!isCacheDbReady()) return null;
  try {
    const rows = await cacheSelect("subtitle_cache", { cache_key: `eq.${cacheKey}` }, { limit: 1 });
    if (!rows[0] || Number(rows[0].expires_at) < Date.now()) return null;
    const cues = rows[0].cues as Array<{ timing: string; text: string }>;
    // ارفع للـ L1
    SUB_L1.set(cacheKey, { cues, ts: Date.now() });
    return cues;
  } catch { return null; }
}

export async function setSubtitleCache(
  cacheKey: string,
  cues: Array<{ timing: string; text: string }>
): Promise<void> {
  if (!cues.length) return;
  // L1 فوري
  SUB_L1.set(cacheKey, { cues, ts: Date.now() });
  // L2 Supabase: fire-and-forget
  if (!isCacheDbReady()) return;
  const now = Date.now();
  cacheUpsert("subtitle_cache", {
    cache_key:  cacheKey,
    cues,
    fetched_at: now,
    expires_at: now + SUB_DB_TTL,
  }, "cache_key").catch(() => {});
}

// تنظيف L1 للترجمات كل ساعة
setInterval(() => {
  const now = Date.now();
  for (const [k, v] of SUB_L1) {
    if (now - v.ts > SUB_L1_TTL) SUB_L1.delete(k);
  }
}, 3_600_000);
